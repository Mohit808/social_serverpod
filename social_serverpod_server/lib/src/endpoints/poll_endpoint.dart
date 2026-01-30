// lib/src/endpoints/poll_endpoint.dart
import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class PollEndpoint extends Endpoint {

  /// Get all polls for authenticated user
  Future<Map<String, dynamic>> getPolls(Session session) async {
    // Check authentication
    // if (!await session.isUserSignedIn) {
    //   throw Exception('User not authenticated');
    // }

    // final authenticatedUserId = await session.auth.authenticatedUserId;
    // if (authenticatedUserId == null) {
    //   throw Exception('User not authenticated');
    // }

    var useId=1;
    // Get user profile
    final userProfile = await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(useId),
    );

    if (userProfile == null) {
      throw Exception('User profile does not exist');
    }

    // Get polls for user
    final polls = await Poll.db.find(
      session,
      where: (t) => t.userId.equals(useId),
      orderBy: (t) => t.id,
      orderDescending: true,
    );

    // Get options and votes for each poll
    final pollsJson = <Map<String, dynamic>>[];

    for (var poll in polls) {
      final options = await PollOption.db.find(
        session,
        where: (t) => t.pollId.equals(poll.id!),
        orderBy: (t) => t.order,
      );

      final votes = await PollVote.db.find(
        session,
        where: (t) => t.pollId.equals(poll.id!),
      );

      pollsJson.add({
        'id': poll.id,
        'user_id': poll.userId,
        'question': poll.question,
        'created_at': poll.createdAt?.toIso8601String(),
        // 'updated_at': poll.updatedAt?.toIso8601String(),
        'options': options.map((opt) => {
          'id': opt.id,
          'poll_id': opt.pollId,
          'text': opt.text,
          'order': opt.order,
          'vote_count': opt.voteCount,
        }).toList(),
        'total_votes': votes.length,
        'user_voted': votes.any((v) => v.userId == useId),
      });
    }

    return {
      'message': 'Polls fetched successfully.',
      'status': 200,
      'data': pollsJson,
    };
  }

  /// Create a new poll
  Future<Map<String, dynamic>> createPoll(
      Session session, {
        required String question,
        required List<String> options,
      }) async {
    // Check authentication
    // if (!await session.isUserSignedIn) {
    //   throw Exception('User not authenticated');
    // }

    // final authenticatedUserId = await session.auth.authenticatedUserId;
    // if (authenticatedUserId == null) {
    //   throw Exception('User not authenticated');
    // }

    // Get user profile
    var useId=1;
    final userProfile = await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(useId),
    );

    if (userProfile == null) {
      return {
        'message': 'User profile does not exist',
        'status': 404,
      };
    }

    // Validate options
    if (options.length < 2) {
      return {
        'message': 'At least 2 options are required',
        'status': 400,
      };
    }

    try {
      // Create poll
      final poll = await Poll.db.insertRow(
        session,
        Poll(
          userId: useId,
          question: question,
          createdAt: DateTime.now(), isMultipleChoice: false,
          // updatedAt: DateTime.now(),
        ),
      );

      // Create poll options
      final pollOptions = <PollOption>[];
      for (var i = 0; i < options.length; i++) {
        final option = await PollOption.db.insertRow(
          session,
          PollOption(
            pollId: poll.id!,
            text: options[i],
            order: i,
            voteCount: 0,
            // createdAt: DateTime.now(),
          ),
        );
        pollOptions.add(option);
      }

      // Create post with poll
      await Post.db.insertRow(
        session,
        Post(
          userId: useId,
          pollId: poll.id,
          text: 'New poll created: ${poll.question}',
          isPublic: true,
          likesCount: 0,
          commentsCount: 0,
          viewsCount: 0,
          retweetCount: 0,
          isDeleted: false,
          isReported: false,
          isArchived: false,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
      );

      return {
        'message': 'Poll created successfully',
        'status': 200,
        'data': {
          'id': poll.id,
          'user_id': poll.userId,
          'question': poll.question,
          'created_at': poll.createdAt?.toIso8601String(),
          // 'updated_at': poll.updatedAt?.toIso8601String(),
          'options': pollOptions.map((opt) => {
            'id': opt.id,
            'poll_id': opt.pollId,
            'text': opt.text,
            'order': opt.order,
            'vote_count': opt.voteCount,
          }).toList(),
          'total_votes': 0,
          'user_voted': false,
        },
      };
    } catch (e) {
      return {
        'message': e.toString(),
        'status': 400,
      };
    }
  }

  /// Delete a poll
  Future<Map<String, dynamic>> deletePoll(
      Session session, {
        required int pollId,
      }) async {
    // Check authentication
    // if (!await session.isUserSignedIn) {
    //   throw Exception('User not authenticated');
    // }

    var useId=1;
    // final authenticatedUserId = await session.auth.authenticatedUserId;
    // if (authenticatedUserId == null) {
    //   throw Exception('User not authenticated');
    // }
    //
    // // Find poll
    final poll = await Poll.db.findFirstRow(
      session,
      where: (t) => t.id.equals(pollId) & t.userId.equals(useId),
    );

    if (poll == null) {
      return {
        'message': 'Poll not found or unauthorized.',
        'status': 404,
      };
    }

    await PollOption.db.deleteWhere(
      session,
      where: (t) => t.pollId.equals(pollId),
    );

    // Delete poll votes
    await PollVote.db.deleteWhere(
      session,
      where: (t) => t.pollId.equals(pollId),
    );

    // Delete poll
    await Poll.db.deleteRow(session, poll);

    return {
      'message': 'Poll deleted successfully.',
      'status': 200,
    };
  }
}