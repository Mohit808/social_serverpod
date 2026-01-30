import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class SavedPostEndpoint extends Endpoint {

  /// Toggle save/unsave a post for the authenticated user
  Future<Map<String, dynamic>> toggleSavePost(
      Session session, {
        required String? post_id,
      }) async {


    var postId=int.parse("${post_id??1}");
    // Check authentication
    // if (!await session.isUserSignedIn) {
    //   return {
    //     'message': 'User not authenticated',
    //     'status': 401,
    //   };
    // }

    // final authenticatedUserId = await session.auth.authenticatedUserId;
    // if (authenticatedUserId == null) {
    //   return {
    //     'message': 'User not authenticated',
    //     'status': 401,
    //   };
    // }

    var userId = 1; // Replace with actual authenticated user ID

    try {
      // Check if user profile exists
      final userProfile = await UserProfile.db.findFirstRow(
        session,
        where: (t) => t.userId.equals(userId),
      );

      if (userProfile == null) {
        return {
          'message': 'User not found.',
          'status': 404,
        };
      }

      // Check if post exists
      final post = await Post.db.findById(session, postId);
      if (post == null) {
        return {
          'message': 'Post not found.',
          'status': 404,
        };
      }

      // Check if post is already saved
      final existingSavedPost = await SavedPost.db.findFirstRow(
        session,
        where: (sp) =>
        sp.userId.equals(userId) &
        sp.postId.equals(postId),
      );

      if (existingSavedPost != null) {
        // Post is already saved, so unsave it
        await SavedPost.db.deleteRow(session, existingSavedPost);

        return {
          'message': 'Post unsaved successfully.',
          'status': 200,
          'data': {'saved': false},
        };
      } else {
        // Post is not saved, so save it
        await SavedPost.db.insertRow(
          session,
          SavedPost(
            userId: userId,
            postId: postId,
            // createdAt: DateTime.now(),
          ),
        );

        return {
          'message': 'Post saved successfully.',
          'status': 200,
          'data': {'saved': true},
        };
      }
    } catch (e) {
      return {
        'message': 'Error toggling saved post: ${e.toString()}',
        'status': 500,
      };
    }
  }

  /// Get all saved posts for the authenticated user
  Future<Map<String, dynamic>> getSavedPosts(
      Session session, {
        int page = 1,
        int pageSize = 10,
      }) async {
    // Check authentication
    // if (!await session.isUserSignedIn) {
    //   return {
    //     'message': 'User not authenticated',
    //     'status': 401,
    //   };
    // }

    // final authenticatedUserId = await session.auth.authenticatedUserId;
    // if (authenticatedUserId == null) {
    //   return {
    //     'message': 'User not authenticated',
    //     'status': 401,
    //   };
    // }

    var userId = 1; // Replace with actual authenticated user ID

    try {
      // Get all saved posts for the user
      final savedPosts = await SavedPost.db.find(
        session,
        where: (sp) => sp.userId.equals(userId),
        orderBy: (sp) => sp.id,
        orderDescending: true,
      );

      if (savedPosts.isEmpty) {
        return {
          'message': 'No saved posts found.',
          'status': 200,
          'data': [],
        };
      }

      // Get the post IDs
      final postIds = savedPosts.map((sp) => sp.postId).toSet();

      // Fetch the actual posts
      final posts = await Post.db.find(
        session,
        where: (p) => p.id.inSet(postIds),
      );

      // Pagination
      final totalPosts = posts.length;
      final totalPages = (totalPosts / pageSize).ceil();
      final startIndex = (page - 1) * pageSize;
      final endIndex = startIndex + pageSize;

      final paginatedPosts = posts.sublist(
        startIndex,
        endIndex > totalPosts ? totalPosts : endIndex,
      );

      return {
        'message': 'Saved posts fetched successfully.',
        'status': 200,
        'data': paginatedPosts.map((p) => p.toJson()).toList(),
        'pagination': {
          'page': page,
          'page_size': pageSize,
          'total_items': totalPosts,
          'total_pages': totalPages,
        },
      };
    } catch (e) {
      return {
        'message': 'Error fetching saved posts: ${e.toString()}',
        'status': 500,
      };
    }
  }

  /// Check if a post is saved by the authenticated user
  Future<Map<String, dynamic>> checkIfPostSaved(
      Session session, {
        required int postId,
      }) async {
    // Check authentication
    // if (!await session.isUserSignedIn) {
    //   return {
    //     'message': 'User not authenticated',
    //     'status': 401,
    //   };
    // }

    // final authenticatedUserId = await session.auth.authenticatedUserId;
    // if (authenticatedUserId == null) {
    //   return {
    //     'message': 'User not authenticated',
    //     'status': 401,
    //   };
    // }

    var userId = 1; // Replace with actual authenticated user ID

    try {
      final savedPost = await SavedPost.db.findFirstRow(
        session,
        where: (sp) =>
        sp.userId.equals(userId) &
        sp.postId.equals(postId),
      );

      return {
        'message': 'Post check completed.',
        'status': 200,
        'data': {'saved': savedPost != null},
      };
    } catch (e) {
      return {
        'message': 'Error checking saved post: ${e.toString()}',
        'status': 500,
      };
    }
  }

  /// Get count of saved posts for the authenticated user
  Future<Map<String, dynamic>> getSavedPostsCount(
      Session session,
      ) async {
    // Check authentication
    // if (!await session.isUserSignedIn) {
    //   return {
    //     'message': 'User not authenticated',
    //     'status': 401,
    //   };
    // }

    // final authenticatedUserId = await session.auth.authenticatedUserId;
    // if (authenticatedUserId == null) {
    //   return {
    //     'message': 'User not authenticated',
    //     'status': 401,
    //   };
    // }

    var userId = 1; // Replace with actual authenticated user ID

    try {
      final savedPosts = await SavedPost.db.find(
        session,
        where: (sp) => sp.userId.equals(userId),
      );

      return {
        'message': 'Saved posts count fetched successfully.',
        'status': 200,
        'data': {'count': savedPosts.length},
      };
    } catch (e) {
      return {
        'message': 'Error fetching saved posts count: ${e.toString()}',
        'status': 500,
      };
    }
  }
}