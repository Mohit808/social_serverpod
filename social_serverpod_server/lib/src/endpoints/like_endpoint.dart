// lib/src/endpoints/like_endpoint.dart

import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class LikeEndpoint extends Endpoint {
  Future<Map<String, dynamic>> likePost(Session session, String? post_id) async {
    // Check if user is authenticated
    // if (!await session.isUserSignedIn) {
    //   throw Exception('User not authenticated');
    // }

    // final userId = await session.auth.authenticatedUserId;
    // if (userId == null) {
    //   throw Exception('User ID not found');
    // }

    var postId=int.parse("${post_id??1}");
    var userId=1;
    // Find user profile
    final userProfile = await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId),
    );

    if (userProfile == null) {
      throw Exception('User profile does not exist');
    }

    // Find post
    final post = await Post.db.findById(session, postId);
    if (post == null) {
      throw Exception('Post not found');
    }

    // Check if like already exists
    final existingLike = await Like.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userProfile.id!) & t.postId.equals(postId),
    );

    if (existingLike != null) {
      // Unlike: delete the like and decrement count
      await Like.db.deleteRow(session, existingLike);

      post.likesCount -= 1;
      await Post.db.updateRow(session, post);

      return {
        'message': 'Unliked post successfully',
        'status': 200,
        'data': {
          'like': false,
        },
      };
    } else {
      // Like: create new like and increment count
      final newLike = Like(
        userId: userProfile.id!,
        postId: postId,
      );
      await Like.db.insertRow(session, newLike);

      post.likesCount += 1;
      await Post.db.updateRow(session, post);

      return {
        'message': 'Post liked successfully.',
        'status': 200,
        'data': {
          'like': true,
        },
      };
    }
  }
}