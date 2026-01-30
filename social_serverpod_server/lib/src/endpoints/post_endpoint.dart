// // lib/src/endpoints/post_endpoint.dart
// import 'package:serverpod/serverpod.dart';
// import 'package:serverpod_auth_server/serverpod_auth_server.dart';
// import '../generated/protocol.dart';
//
// class PostEndpoint extends Endpoint {
//
//   /// Get posts with filtering and pagination
//   Future<Map<String, dynamic>> getPosts(
//       Session session, {
//         String? city,
//         String? tags,
//         String? userIdx,
//         bool? my,
//         bool? saved,
//         bool? withMedia,
//         bool? top,
//         String? cursor,
//         int pageSize = 20,
//       }) async {
//     // Check authentication
//     if (!await session.isUserSignedIn) {
//       throw Exception('User not authenticated');
//     }
//
//     // final authenticatedUserId = await session.authenticated!.userId;
//     // if (authenticatedUserId == null) {
//     //   throw Exception('User not authenticated');
//     // }
//
//     // Get user profile
//     var userId=int.parse("${userIdx??1}");
//     final userProfile = await UserProfile.db.findFirstRow(
//       session,
//       where: (t) => t.userId.equals(userId),
//     );
//
//     if (userProfile == null) {
//       throw Exception('User profile does not exist');
//     }
//
//     // Build base query
//     var query = Post.db.find(
//       session,
//       where: (t) => t.isDeleted.equals(false) & t.isArchived.equals(false),
//       orderBy: (t) => t.id,
//       orderDescending: true,
//     );
//
//     // Apply filters
//     if (city != null) {
//       final cityObj = await City.db.findFirstRow(
//         session,
//         where: (t) => t.name.ilike(city),
//       );
//
//       if (cityObj != null) {
//         query = Post.db.find(
//           session,
//           where: (t) =>
//           t.isDeleted.equals(false) &
//           t.isArchived.equals(false) &
//           t.cityId.equals(cityObj.id),
//           orderBy: (t) => t.id,
//           orderDescending: true,
//         );
//       }
//     }
//
//     if (tags != null) {
//       final tagList = tags.split(',');
//       // You'll need to implement many-to-many relationship for tags
//       // This requires a separate PostTag join table
//       final postTags = await PostTag.db.find(
//         session,
//         where: (t) => t.tagName.inSet(tagList.toSet()),
//       );
//       final postIds = postTags.map((pt) => pt.postId).toSet();
//
//       query = Post.db.find(
//         session,
//         where: (t) =>
//         t.isDeleted.equals(false) &
//         t.isArchived.equals(false) &
//         t.id.inSet(postIds),
//         orderBy: (t) => t.id,
//         orderDescending: true,
//       );
//     }
//
//     if (userId != null) {
//       query = Post.db.find(
//         session,
//         where: (t) =>
//         t.isDeleted.equals(false) &
//         t.isArchived.equals(false) &
//         t.userId.equals(userId),
//         orderBy: (t) => t.id,
//         orderDescending: true,
//       );
//     }
//
//     if (my == true) {
//       query = Post.db.find(
//         session,
//         where: (t) =>
//         t.isDeleted.equals(false) &
//         t.isArchived.equals(false) &
//         t.userId.equals(authenticatedUserId),
//         orderBy: (t) => t.id,
//         orderDescending: true,
//       );
//     }
//
//     if (saved == true) {
//       final savedPosts = await SavedPost.db.find(
//         session,
//         where: (t) => t.userId.equals(authenticatedUserId),
//       );
//       final savedPostIds = savedPosts.map((sp) => sp.postId).toSet();
//
//       query = Post.db.find(
//         session,
//         where: (t) =>
//         t.isDeleted.equals(false) &
//         t.isArchived.equals(false) &
//         t.id.inSet(savedPostIds),
//         orderBy: (t) => t.id,
//         orderDescending: true,
//       );
//     }
//
//     if (withMedia == true) {
//       query = Post.db.find(
//         session,
//         where: (t) =>
//         t.isDeleted.equals(false) &
//         t.isArchived.equals(false) &
//         t.image.notEquals(null) &
//         t.image.notEquals(''),
//         orderBy: (t) => t.id,
//         orderDescending: true,
//       );
//     }
//
//     if (top == true) {
//       query = Post.db.find(
//         session,
//         where: (t) => t.isDeleted.equals(false) & t.isArchived.equals(false),
//         orderBy: (t) => t.likesCount,
//         orderDescending: true,
//       );
//     }
//
//     // Execute query with pagination
//     final posts = await query;
//
//     // Implement cursor-based pagination
//     int startIndex = 0;
//     if (cursor != null) {
//       final cursorId = int.tryParse(cursor);
//       if (cursorId != null) {
//         startIndex = posts.indexWhere((p) => p.id == cursorId) + 1;
//       }
//     }
//
//     final paginatedPosts = posts.skip(startIndex).take(pageSize).toList();
//     final hasMore = posts.length > startIndex + pageSize;
//     final nextCursor = hasMore && paginatedPosts.isNotEmpty
//         ? paginatedPosts.last.id.toString()
//         : null;
//
//     // Track post views
//     final clientIp = session.httpRequest.remoteAddress.address;
//     final now = DateTime.now();
//     final thirtyMinutesAgo = now.subtract(Duration(minutes: 30));
//
//     final viewEvents = <PostViewCount>[];
//     final postIdsToIncrement = <int>[];
//
//     for (var post in paginatedPosts) {
//       final alreadyViewed = await PostViewCount.db.findFirstRow(
//         session,
//         where: (t) =>
//         t.postId.equals(post.id!) &
//         t.userId.equals(userId) &
//         t.viewedAt.greaterOrEqualTo(thirtyMinutesAgo),
//       );
//
//       if (alreadyViewed == null) {
//         viewEvents.add(PostViewCount(
//           postId: post.id!,
//           userId: userId,
//           ipAddress: clientIp,
//           viewedAt: now,
//         ));
//         postIdsToIncrement.add(post.id!);
//       }
//     }
//
//     // Bulk insert view events
//     if (viewEvents.isNotEmpty) {
//       await PostViewCount.db.insertRows(session, viewEvents);
//     }
//
//     // Increment view counts
//     if (postIdsToIncrement.isNotEmpty) {
//       await session.db.query(
//         'UPDATE posts SET views_count = views_count + 1 WHERE id = ANY(@ids)',
//         substitutionValues: {'ids': postIdsToIncrement},
//       );
//     }
//
//     // Return response as Map
//     return {
//       'posts': paginatedPosts.map((p) => p.toJson()).toList(),
//       'nextCursor': nextCursor,
//       'hasMore': hasMore,
//       'message': 'Posts fetched successfully',
//       'status': 200,
//     };
//   }
//
//   /// Create a new post
//   Future<Map<String, dynamic>> createPost(
//       Session session, {
//         String? text,
//         String? image,
//         String? location,
//         String? latitude,
//         String? longitude,
//         String? city,
//         String? state,
//         String? country,
//         String? description,
//         int? canReply,
//         bool? isPublic,
//         int? retweetedPostId,
//         int? pollId,
//       }) async {
//     // Check authentication
//     if (!await session.isUserSignedIn) {
//       throw Exception('User not authenticated');
//     }
//
//     final authenticatedUserId = await session.auth.authenticatedUserId;
//     if (authenticatedUserId == null) {
//       throw Exception('User not authenticated');
//     }
//
//     // Get user profile
//     final userProfile = await UserProfile.db.findFirstRow(
//       session,
//       where: (t) => t.userId.equals(authenticatedUserId),
//     );
//
//     if (userProfile == null) {
//       throw Exception('User profile does not exist');
//     }
//
//     // Handle city
//     int? cityId;
//     if (city != null) {
//       var cityObj = await City.db.findFirstRow(
//         session,
//         where: (t) =>
//         t.name.equals(city) &
//         t.state.equals(state) &
//         t.country.equals(country),
//       );
//
//       if (cityObj == null) {
//         cityObj = await City.db.insertRow(
//           session,
//           City(
//             name: city,
//             state: state,
//             country: country,
//           ),
//         );
//       }
//       cityId = cityObj.id;
//     }
//
//     // Handle empty string to null conversion for coordinates
//     final lat = latitude?.isEmpty ?? true
//         ? null
//         : double.tryParse(latitude!);
//     final lon = longitude?.isEmpty ?? true
//         ? null
//         : double.tryParse(longitude!);
//
//     // Create post
//     final post = await Post.db.insertRow(
//       session,
//       Post(
//         userId: authenticatedUserId,
//         text: text,
//         image: image,
//         location: location,
//         latitude: lat,
//         longitude: lon,
//         cityId: cityId,
//         description: description,
//         canReply: canReply ?? 1,
//         isPublic: isPublic ?? true,
//         likesCount: 0,
//         commentsCount: 0,
//         viewsCount: 0,
//         retweetCount: 0,
//         retweetedPostId: retweetedPostId,
//         pollId: pollId,
//         isDeleted: false,
//         isReported: false,
//         isArchived: false,
//         createdAt: DateTime.now(),
//         updatedAt: DateTime.now(),
//       ),
//     );
//
//     return {
//       'data': post.toJson(),
//       'message': 'Post created successfully',
//       'status': 200,
//     };
//   }
// }