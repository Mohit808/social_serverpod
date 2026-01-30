import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class VoteEndpoint extends Endpoint {

  /// Record a vote for a poll option
  Future<Map<String, dynamic>> vote(
      Session session, {
        required int pollOptionId,
      }) async {
    // Check authentication
    if (!await session.isUserSignedIn) {
      throw Exception('User not authenticated');
    }

    var userId=1;
    // final authenticatedUserId = await session.auth.authenticatedUserId;
    // if (authenticatedUserId == null) {
    //   throw Exception('User not authenticated');
    // }

    // Get user profile
    final user = await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId),
    );

    if (user == null) {
      return {
        'message': 'User not found.',
        'status': 404,
      };
    }

    // Get poll option
    final pollOption = await PollOption.db.findById(session, pollOptionId);

    if (pollOption == null) {
      return {
        'message': 'Poll option not found.',
        'status': 404,
      };
    }

    final pollId = pollOption.pollId;

    // Check if user already voted
    final existingVote = await PollVote.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId) & t.pollId.equals(pollId),
    );

    if (existingVote != null) {
      return {
        'message': 'User has already voted in this poll.',
        'status': 400,
      };
    }

    // Create vote
    await PollVote.db.insertRow(
      session,
      PollVote(
        userId: userId,
        pollId: pollId,
        pollOptionId: pollOptionId,
        createdAt: DateTime.now(),
      ),
    );

    // Increment vote count
    final updatedOption = pollOption.copyWith(
      voteCount: pollOption.voteCount + 1,
    );
    await PollOption.db.updateRow(session, updatedOption);

    return {
      'message': 'Vote recorded successfully.',
      'status': 200,
    };
  }
}