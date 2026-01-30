// lib/src/endpoints/post_endpoint.dart
import 'dart:convert';

import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';
import '../generated/protocol.dart';

class PostEndpoint extends Endpoint {

  Future<Map<String, dynamic>> getPosts(
      Session session, {
        String? city,
        String? tags,
        String? userIdx,
        // bool? my,
        // bool? saved,
        // bool? withMedia,
        // bool? top,
        String? cursor,
      }) async {
    var pageSize = 20;

    var userId = int.parse("${1}");
    final userProfile = await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId),
    );

    if (userProfile == null) {
      throw Exception('User profile does not exist');
    }

    // Build base query (existing logic)
    var query = Post.db.find(
      session,
      where: (t) => t.isDeleted.equals(false) & t.isArchived.equals(false),
      orderBy: (t) => t.id,
      orderDescending: true,
    );

    // Apply all your existing filters here...
    // (keep your existing filter logic for city, tags, userId, my, saved, withMedia, top)

    final posts = await query;

    // Pagination
    int startIndex = 0;
    if (cursor != null) {
      final decodedCursor = utf8.decode(base64.decode(cursor));
      final cursorId = int.tryParse(decodedCursor.split('=').last);
      if (cursorId != null) {
        startIndex = posts.indexWhere((p) => p.id == cursorId) + 1;
      }
    }

    final paginatedPosts = posts.skip(startIndex).take(pageSize).toList();
    final hasMore = posts.length > startIndex + pageSize;

    // Build next/previous cursors
    String? nextCursor;
    if (hasMore && paginatedPosts.isNotEmpty) {
      final encodedCursor = base64.encode(utf8.encode('p=${paginatedPosts.last.id}'));
      nextCursor = 'https://kodemotion.com/social/post?city=${city ?? ''}&cursor=$encodedCursor&tags=${tags ?? ''}&user_id=${userIdx ?? ''}';
      // nextCursor = 'https://kodemotion.com/social/post?city=${city ?? ''}&cursor=$encodedCursor&my=${my ?? ''}&saved=${saved ?? ''}&tags=${tags ?? ''}&top=${top ?? ''}&user_id=${userIdx ?? ''}&withMedia=${withMedia ?? ''}';
    }

    // Transform posts data
    final transformedPosts = await Future.wait(
      paginatedPosts.map((post) async {
        // Fetch user profile
        final postUser = await UserProfile.db.findFirstRow(
          session,
          where: (t) => t.userId.equals(post.userId),
        );

        // Fetch tags
        final postTags = await PostTag.db.find(
          session,
          where: (t) => t.postId.equals(post.id!),
        );
        final tagList = await Future.wait(
          postTags.map((pt) async {
            final tag = await Tag.db.findById(session, pt.tagId);
            return tag != null ? {
              'id': tag.id,
              'name': tag.name,
              'color': tag.color,
              'image': tag.image,
            } : null;
          }),
        );

        // Check if liked
        final liked = await Like.db.findFirstRow(
          session,
          where: (t) => t.postId.equals(post.id!) & t.userId.equals(userId),
        );

        // Check if saved
        final savedPost = await SavedPost.db.findFirstRow(
          session,
          where: (t) => t.postId.equals(post.id!) & t.userId.equals(userId),
        );

        // Fetch city
        City? cityObj;
        if (post.cityId != null) {
          cityObj = await City.db.findById(session, post.cityId!);
        }

        return {
          'id': post.id,
          'retweeted_post': null,
          'user': postUser != null ? {
            'id': postUser.id,
            'name': postUser.name,
            'email': postUser.email,
            'phone_number': postUser.phoneNumber,
            'image': postUser.image,
            'username': postUser.username,
            'is_verified': postUser.isVerified,
            'user_id': postUser.userId,
          } : null,
          'people_tagged': [],
          'poll': null,
          'is_liked': liked != null,
          'is_saved': savedPost != null,
          'tag_list': tagList.where((t) => t != null).toList(),
          'text': post.text,
          'image': post.image,
          'location': post.location,
          'latitude': post.latitude,
          'longitude': post.longitude,
          'description': post.description,
          'can_reply': post.canReply,
          'is_public': post.isPublic,
          'likes_count': post.likesCount,
          'comments_count': post.commentsCount,
          'views_count': post.viewsCount,
          'retweet_count': post.retweetCount,
          'is_deleted': post.isDeleted,
          'is_reported': post.isReported,
          'is_archived': post.isArchived,
          'created_at': post.createdAt?.toIso8601String(),
          'updated_at': post.updatedAt?.toIso8601String(),
          'city': post.cityId,
        };
      }),
    );

    return {
      'status': 200,
      'message': 'Posts fetched successfully',
      'next': nextCursor,
      'previous': null,
      'data': transformedPosts,
    };
  }

  /// Get posts with filtering and pagination
  // Future<Map<String, dynamic>> getPosts(
  //     Session session, {
  //       String? city,
  //       String? tags,
  //       String? userIdx,
  //       bool? my,
  //       bool? saved,
  //       bool? withMedia,
  //       bool? top,
  //       String? cursor,
  //       // String? pageSize,
  //     }) async {
  //
  //
  //   var pageSize=20;
  //   // Check authentication
  //   // if (!await session.isUserSignedIn) {
  //   //   throw Exception('User not authenticated');
  //   // }
  //
  //   // final authenticatedUserId = await session.authenticated!.userId;
  //   // if (authenticatedUserId == null) {
  //   //   throw Exception('User not authenticated');
  //   // }
  //
  //   // Get user profile
  //   var userId=int.parse("${userIdx??1}");
  //   final userProfile = await UserProfile.db.findFirstRow(
  //     session,
  //     where: (t) => t.userId.equals(userId),
  //   );
  //
  //   if (userProfile == null) {
  //     throw Exception('User profile does not exist');
  //   }
  //
  //   // Build base query
  //   var query = Post.db.find(
  //     session,
  //     where: (t) => t.isDeleted.equals(false) & t.isArchived.equals(false),
  //     orderBy: (t) => t.id,
  //     orderDescending: true,
  //   );
  //
  //   // Apply filters
  //   if (city != null) {
  //     final cityObj = await City.db.findFirstRow(
  //       session,
  //       where: (t) => t.name.ilike(city),
  //     );
  //
  //     if (cityObj != null) {
  //       query = Post.db.find(
  //         session,
  //         where: (t) =>
  //         t.isDeleted.equals(false) &
  //         t.isArchived.equals(false) &
  //         t.cityId.equals(cityObj.id),
  //         orderBy: (t) => t.id,
  //         orderDescending: true,
  //       );
  //     }
  //   }
  //
  //   if (tags != null) {
  //     final tagList = tags.split(',');
  //     // You'll need to implement many-to-many relationship for tags
  //     // This requires a separate PostTag join table
  //     final postTags = await PostTag.db.find(
  //       session,
  //       where: (t) => t.tagName.inSet(tagList.toSet()),
  //     );
  //     final postIds = postTags.map((pt) => pt.postId).toSet();
  //
  //     query = Post.db.find(
  //       session,
  //       where: (t) =>
  //       t.isDeleted.equals(false) &
  //       t.isArchived.equals(false) &
  //       t.id.inSet(postIds),
  //       orderBy: (t) => t.id,
  //       orderDescending: true,
  //     );
  //   }
  //
  //   if (userId != null) {
  //     query = Post.db.find(
  //       session,
  //       where: (t) =>
  //       t.isDeleted.equals(false) &
  //       t.isArchived.equals(false) &
  //       t.userId.equals(userId),
  //       orderBy: (t) => t.id,
  //       orderDescending: true,
  //     );
  //   }
  //
  //   if (my == true) {
  //     query = Post.db.find(
  //       session,
  //       where: (t) =>
  //       t.isDeleted.equals(false) &
  //       t.isArchived.equals(false) &
  //       t.userId.equals(userId),
  //       orderBy: (t) => t.id,
  //       orderDescending: true,
  //     );
  //   }
  //
  //   if (saved == true) {
  //     final savedPosts = await SavedPost.db.find(
  //       session,
  //       where: (t) => t.userId.equals(userId),
  //     );
  //     final savedPostIds = savedPosts.map((sp) => sp.postId).toSet();
  //
  //     query = Post.db.find(
  //       session,
  //       where: (t) =>
  //       t.isDeleted.equals(false) &
  //       t.isArchived.equals(false) &
  //       t.id.inSet(savedPostIds),
  //       orderBy: (t) => t.id,
  //       orderDescending: true,
  //     );
  //   }
  //
  //   if (withMedia == true) {
  //     query = Post.db.find(
  //       session,
  //       where: (t) =>
  //       t.isDeleted.equals(false) &
  //       t.isArchived.equals(false) &
  //       t.image.notEquals(null) &
  //       t.image.notEquals(''),
  //       orderBy: (t) => t.id,
  //       orderDescending: true,
  //     );
  //   }
  //
  //   if (top == true) {
  //     query = Post.db.find(
  //       session,
  //       where: (t) => t.isDeleted.equals(false) & t.isArchived.equals(false),
  //       orderBy: (t) => t.likesCount,
  //       orderDescending: true,
  //     );
  //   }
  //
  //   // Execute query with pagination
  //   final posts = await query;
  //
  //   // Implement cursor-based pagination
  //   int startIndex = 0;
  //   if (cursor != null) {
  //     final cursorId = int.tryParse(cursor);
  //     if (cursorId != null) {
  //       startIndex = posts.indexWhere((p) => p.id == cursorId) + 1;
  //     }
  //   }
  //
  //   final paginatedPosts = posts.skip(startIndex).take(pageSize).toList();
  //   final hasMore = posts.length > startIndex + pageSize;
  //   final nextCursor = hasMore && paginatedPosts.isNotEmpty
  //       ? paginatedPosts.last.id.toString()
  //       : null;
  //
  //   // Track post views
  //   // final clientIp = session.httpRequest.remoteAddress.address;
  //   // final now = DateTime.now();
  //   // final thirtyMinutesAgo = now.subtract(Duration(minutes: 30));
  //   //
  //   // final viewEvents = <PostViewCount>[];
  //   // final postIdsToIncrement = <int>[];
  //
  //   // for (var post in paginatedPosts) {
  //   //   final alreadyViewed = await PostViewCount.db.findFirstRow(
  //   //     session,
  //   //     where: (t) =>
  //   //     t.postId.equals(post.id!) &
  //   //     t.userId.equals(userId) &
  //   //     t.viewedAt.greaterOrEqualTo(thirtyMinutesAgo),
  //   //   );
  //   //
  //   //   if (alreadyViewed == null) {
  //   //     viewEvents.add(PostViewCount(
  //   //       postId: post.id!,
  //   //       userId: userId,
  //   //       ipAddress: clientIp,
  //   //       viewedAt: now,
  //   //     ));
  //   //     postIdsToIncrement.add(post.id!);
  //   //   }
  //   // }
  //   //
  //   // // Bulk insert view events
  //   // if (viewEvents.isNotEmpty) {
  //   //   await PostViewCount.db.insertRows(session, viewEvents);
  //   // }
  //
  //   // // Increment view counts
  //   // if (postIdsToIncrement.isNotEmpty) {
  //   //   await session.db.query(
  //   //     'UPDATE posts SET views_count = views_count + 1 WHERE id = ANY(@ids)',
  //   //     substitutionValues: {'ids': postIdsToIncrement},
  //   //   );
  //   // }
  //
  //   // Return response as Map
  //   return {
  //     'posts': paginatedPosts.map((p) => p.toJson()).toList(),
  //     'nextCursor': nextCursor,
  //     'hasMore': hasMore,
  //     'message': 'Posts fetched successfully',
  //     'status': 200,
  //   };
  // }

  /// Create a new post
  // Future<Map<String, dynamic>> createPost(
  //     Session session, {
  //       String? text,
  //       String? image,
  //       String? location,
  //       double? latitude,
  //       double? longitude,
  //       String? city,
  //       String? state,
  //       String? country,
  //       String? description,
  //       int? canReply,
  //       bool? isPublic,
  //       int? retweetedPostId,
  //       int? pollId,
  //     }) async {
  //   // Check authentication
  //   // if (!await session.isUserSignedIn) {
  //   //   throw Exception('User not authenticated');
  //   // }
  //
  //   // final authenticatedUserId = await session.auth.authenticatedUserId;
  //   // if (authenticatedUserId == null) {
  //   //   throw Exception('User not authenticated');
  //   // }
  //   var userId=1;
  //   // Get user profile
  //   final userProfile = await UserProfile.db.findFirstRow(
  //     session,
  //     where: (t) => t.userId.equals(userId),
  //   );
  //
  //   if (userProfile == null) {
  //     throw Exception('User profile does not exist');
  //   }
  //
  //   // Handle city
  //   int? cityId;
  //   if (city != null) {
  //     var cityObj = await City.db.findFirstRow(
  //       session,
  //       where: (t) =>
  //       t.name.equals(city) &
  //       t.state.equals(state) &
  //       t.country.equals(country),
  //     );
  //
  //     cityObj ??= await City.db.insertRow(
  //         session,
  //         City(
  //           name: city,
  //           state: state,
  //           country: country,
  //         ),
  //       );
  //     cityId = cityObj.id;
  //   }
  //
  //   // // Handle empty string to null conversion for coordinates
  //   // final lat = latitude?.isEmpty ?? true
  //   //     ? null
  //   //     : double.tryParse(latitude!);
  //   // final lon = longitude?.isEmpty ?? true
  //   //     ? null
  //   //     : double.tryParse(longitude!);
  //
  //   // Create post
  //   final post = await Post.db.insertRow(
  //     session,
  //     Post(
  //       userId: userId,
  //       text: text,
  //       image: image,
  //       location: location,
  //       latitude: latitude,
  //       longitude: longitude,
  //       cityId: cityId,
  //       description: description,
  //       canReply: canReply ?? 1,
  //       isPublic: isPublic ?? true,
  //       likesCount: 0,
  //       commentsCount: 0,
  //       viewsCount: 0,
  //       retweetCount: 0,
  //       retweetedPostId: retweetedPostId,
  //       pollId: pollId,
  //       isDeleted: false,
  //       isReported: false,
  //       isArchived: false,
  //       createdAt: DateTime.now(),
  //       updatedAt: DateTime.now(),
  //     ),
  //   );
  //
  //   return {
  //     'data': post.toJson(),
  //     'message': 'Post created successfully',
  //     'status': 200,
  //   };
  // }


  Future<Map<String, dynamic>> createPost(
      Session session, {
        String? text,
        String? image,
        String? location,
        double? latitude,
        double? longitude,
        String? city,
        String? state,
        String? country,
        String? description,
        int? canReply,
        bool? isPublic,
        int? retweetedPostId,
        int? pollId,
        List<String>? tags, // Add tags parameter
        List<String>? peopleTaqqed, // Add people_tagged if needed
      }) async {
    // Check authentication
    // if (!await session.isUserSignedIn) {
    //   throw Exception('User not authenticated');
    // }

    // final authenticatedUserId = await session.auth.authenticatedUserId;
    // if (authenticatedUserId == null) {
    //   throw Exception('User not authenticated');
    // }
    var userId = 1;

    // Get user profile
    final userProfile = await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId),
    );

    if (userProfile == null) {
      throw Exception('User profile does not exist');
    }

    // Handle city
    int? cityId;
    if (city != null) {
      var cityObj = await City.db.findFirstRow(
        session,
        where: (t) =>
        t.name.equals(city) &
        t.state.equals(state) &
        t.country.equals(country),
      );

      cityObj ??= await City.db.insertRow(
        session,
        City(
          name: city,
          state: state,
          country: country,
        ),
      );
      cityId = cityObj.id;
    }

    // Create post
    final post = await Post.db.insertRow(
      session,
      Post(
        userId: userId,
        text: text,
        image: image,
        location: location,
        latitude: latitude,
        longitude: longitude,
        cityId: cityId,
        description: description,
        canReply: canReply ?? 1,
        isPublic: isPublic ?? true,
        likesCount: 0,
        commentsCount: 0,
        viewsCount: 0,
        retweetCount: 0,
        retweetedPostId: retweetedPostId,
        pollId: pollId,
        isDeleted: false,
        isReported: false,
        isArchived: false,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
    );

    // Handle tags
    if (tags != null && tags.isNotEmpty) {
      await _createAndAssociateTags(session, post.id!, tags);
    }

    return {
      'data': post.toJson(),
      'message': 'Post created successfully',
      'status': 200,
    };
  }

  /// Create tags if they don't exist and associate them with the post
  Future<void> _createAndAssociateTags(
      Session session,
      int postId,
      List<String> tagNames,
      ) async {
    for (var tagName in tagNames) {
      // Skip empty tag names
      if (tagName.trim().isEmpty) continue;

      final trimmedTagName = tagName.trim();

      // Check if tag already exists
      var tag = await Tag.db.findFirstRow(
        session,
        where: (t) => t.name.equals(trimmedTagName),
      );

      // Create tag if it doesn't exist
      if (tag == null) {
        tag = await Tag.db.insertRow(
          session,
          Tag(
            name: trimmedTagName,
            priority: 0,
            createdAt: DateTime.now(),
          ),
        );
      }

      // Check if PostTag association already exists
      final existingPostTag = await PostTag.db.findFirstRow(
        session,
        where: (pt) =>
        pt.postId.equals(postId) &
        pt.tagId.equals(tag!.id!),
      );

      // Create PostTag association if it doesn't exist
      if (existingPostTag == null) {
        await PostTag.db.insertRow(
          session,
          PostTag(
            postId: postId,
            tagId: tag.id!,
            tagName: trimmedTagName,
            // createdAt: DateTime.now(),
          ),
        );
      }
    }
  }

}