import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class StoryEndpoint extends Endpoint {
  /// Create a new story
  Future<Map<String, dynamic>> createStory(
      Session session, {
        required String media_url,
        String? latitude,
        String? longitude,
      }) async {
    // Check authentication
    // if (!await session.isUserSignedIn) {
    //   throw Exception('User not authenticated');
    // }

    var userId = 1;

    // Validate media URL
    if (media_url.isEmpty) {
      return {
        'message': 'Media URL is required.',
        'status': 400,
        'data': null,
      };
    }

    // Find user profile
    final userProfile = await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId),
    );

    if (userProfile == null) {
      return {
        'message': 'User not found.',
        'status': 404,
        'data': null,
      };
    }

    // Set expiry to 24 hours from now
    final expiresAt = DateTime.now().add(Duration(hours: 24));

    // Create story
    final story = Story(
      userId: userProfile.userId!,
      mediaUrl: media_url,
      latitude: latitude,
      longitude: longitude,
      expiresAt: expiresAt, mediaType: 'image',
    );

    final createdStory = await Story.db.insertRow(session, story);

    return {
      'message': 'Story uploaded successfully.',
      'status': 200,
      'data': {
        'id': createdStory.id,
        'user_id': createdStory.userId,
        'media_url': createdStory.mediaUrl,
        'media_type': createdStory.mediaType,
        'latitude': createdStory.latitude,
        'longitude': createdStory.longitude,
        'expires_at': createdStory.expiresAt?.toIso8601String(),
        'created_at': createdStory.createdAt?.toIso8601String(),
      },
    };
  }

  /// Get all stories (my stories + other users' stories)
  Future<Map<String, dynamic>> getStories(
      Session session, {
        String page = "1",
      }) async {
    // Check authentication
    // if (!await session.isUserSignedIn) {
    //   throw Exception('User not authenticated');
    // }

    var userId = 1;

    // Find requester profile
    final requesterProfile = await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId),
    );

    if (requesterProfile == null) {
      return {
        'message': 'User not found.',
        'status': 404,
        'data': null,
      };
    }

    // Parse page number and set page size
    final pageNumber = int.tryParse(page) ?? 1;
    final pageSize = 10;

    // Calculate 24 hours ago
    final last24Hours = DateTime.now().subtract(Duration(hours: 24));

    // Get all stories
    final allStoriesFromDb = await Story.db.find(
      session,
      orderBy: (t) => t.createdAt,
      orderDescending: true,
    );

    // Filter stories from last 24 hours
    final recentStories = allStoriesFromDb.where((story) {
      return story.createdAt != null && story.createdAt!.isAfter(last24Hours);
    }).toList();

    // Get my stories (only on page 1)
    List<Map<String, dynamic>> myStoriesData = [];
    if (pageNumber == 1) {
      final myStories = recentStories.where((story) {
        return story.userId == requesterProfile.userId;
      }).toList();

      myStoriesData = myStories.map((story) {
        return {
          'id': story.id,
          'user_id': story.userId,
          'media_url': story.mediaUrl,
          'media_type': story.mediaType,
          'latitude': story.latitude,
          'longitude': story.longitude,
          'expires_at': story.expiresAt?.toIso8601String(),
          'created_at': story.createdAt?.toIso8601String(),
        };
      }).toList();
    }

    // Group stories by user (excluding requester)
    Map<int, List<Story>> storiesByUser = {};
    for (var story in recentStories) {
      if (story.userId != requesterProfile.userId) {
        storiesByUser.putIfAbsent(story.userId, () => []);
        storiesByUser[story.userId]!.add(story);
      }
    }

    // Get user profiles for all users who have stories
    final userIds = storiesByUser.keys.toList();
    final usersWithStories = userIds.isEmpty
        ? <UserProfile>[]
        : await UserProfile.db.find(
      session,
      where: (t) => t.id.inSet(userIds.toSet()),
    );

    // Apply pagination on users
    final startIndex = (pageNumber - 1) * pageSize;
    final endIndex = startIndex + pageSize;
    final paginatedUsers =
    usersWithStories.skip(startIndex).take(pageSize).toList();

    // Build grouped stories
    List<Map<String, dynamic>> groupedStories = [];
    for (var user in paginatedUsers) {
      final userStories = storiesByUser[user.id] ?? [];
      final storiesData = userStories.map((story) {
        return {
          'id': story.id,
          'user_id': story.userId,
          'media_url': story.mediaUrl,
          'media_type': story.mediaType,
          'latitude': story.latitude,
          'longitude': story.longitude,
          'expires_at': story.expiresAt?.toIso8601String(),
          'created_at': story.createdAt?.toIso8601String(),
        };
      }).toList();

      groupedStories.add({
        'user_id': user.userId,
        'name': user.name,
        'image': user.image,
        'items': storiesData,
      });
    }

    return {
      'message': 'Stories fetched successfully.',
      'status': 200,
      'data': {
        'my_stories': myStoriesData,
        'groupedStories': groupedStories,
      },
    };
  }

  /// Delete a story
  Future<Map<String, dynamic>> deleteStory(
      Session session,
      int storyId,
      ) async {
    // Check authentication
    if (!await session.isUserSignedIn) {
      throw Exception('User not authenticated');
    }

    var userId = 1;

    // Find user profile
    final userProfile = await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId),
    );

    if (userProfile == null) {
      return {
        'message': 'User not found.',
        'status': 404,
        'data': null,
      };
    }

    // Find story and verify ownership
    final story = await Story.db.findById(session, storyId);

    if (story == null || story.userId != userProfile.id) {
      return {
        'message': 'Story not found or unauthorized.',
        'status': 404,
        'data': null,
      };
    }

    // Delete story
    await Story.db.deleteRow(session, story);

    return {
      'message': 'Story deleted successfully.',
      'status': 200,
      'data': null,
    };
  }
}
