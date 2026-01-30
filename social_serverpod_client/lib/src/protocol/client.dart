/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:social_serverpod_client/src/protocol/user.dart' as _i3;
import 'package:social_serverpod_client/src/protocol/user_profile.dart' as _i4;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i5;
import 'protocol.dart' as _i6;

/// {@category Endpoint}
class EndpointAnalysis extends _i1.EndpointRef {
  EndpointAnalysis(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'analysis';

  /// Get all tags with post counts, ordered by post count
  _i2.Future<Map<String, dynamic>> getTags({String? page}) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'analysis',
        'getTags',
        {'page': page},
      );
}

/// {@category Endpoint}
class EndpointAuth extends _i1.EndpointRef {
  EndpointAuth(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'auth';

  _i2.Future<Map<String, dynamic>> emailSignUp(
    String email,
    String password,
    String userName,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'auth',
    'emailSignUp',
    {
      'email': email,
      'password': password,
      'userName': userName,
    },
  );

  _i2.Future<Map<String, dynamic>> emailLogin(
    String email,
    String password,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'auth',
    'emailLogin',
    {
      'email': email,
      'password': password,
    },
  );
}

/// {@category Endpoint}
class EndpointCity extends _i1.EndpointRef {
  EndpointCity(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'city';

  /// Get cities with optional filters
  _i2.Future<Map<String, dynamic>> getCities({
    int? id,
    String? search,
    bool? noImage,
    bool? hideCount,
    String? page,
  }) => caller.callServerEndpoint<Map<String, dynamic>>(
    'city',
    'getCities',
    {
      'id': id,
      'search': search,
      'noImage': noImage,
      'hideCount': hideCount,
      'page': page,
    },
  );

  /// Create a new city
  _i2.Future<Map<String, dynamic>> createCity({
    required String name,
    String? image,
    String? division,
    String? state,
    String? country,
  }) => caller.callServerEndpoint<Map<String, dynamic>>(
    'city',
    'createCity',
    {
      'name': name,
      'image': image,
      'division': division,
      'state': state,
      'country': country,
    },
  );

  /// Update an existing city
  _i2.Future<Map<String, dynamic>> updateCity({
    required int id,
    String? name,
    String? image,
    String? division,
    String? state,
    String? country,
  }) => caller.callServerEndpoint<Map<String, dynamic>>(
    'city',
    'updateCity',
    {
      'id': id,
      'name': name,
      'image': image,
      'division': division,
      'state': state,
      'country': country,
    },
  );
}

/// {@category Endpoint}
class EndpointLike extends _i1.EndpointRef {
  EndpointLike(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'like';

  _i2.Future<Map<String, dynamic>> likePost(String? post_id) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'like',
        'likePost',
        {'post_id': post_id},
      );
}

/// {@category Endpoint}
class EndpointMap extends _i1.EndpointRef {
  EndpointMap(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'map';

  /// Get map data with clustering based on zoom level
  _i2.Future<Map<String, dynamic>> getMapData({
    required String min_lat,
    required String max_lat,
    required String min_lng,
    required String max_lng,
    String? zoom,
    String? page,
    String? pageSize,
    String? tags,
  }) => caller.callServerEndpoint<Map<String, dynamic>>(
    'map',
    'getMapData',
    {
      'min_lat': min_lat,
      'max_lat': max_lat,
      'min_lng': min_lng,
      'max_lng': max_lng,
      'zoom': zoom,
      'page': page,
      'pageSize': pageSize,
      'tags': tags,
    },
  );
}

/// {@category Endpoint}
class EndpointPoll extends _i1.EndpointRef {
  EndpointPoll(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'poll';

  /// Get all polls for authenticated user
  _i2.Future<Map<String, dynamic>> getPolls() =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'poll',
        'getPolls',
        {},
      );

  /// Create a new poll
  _i2.Future<Map<String, dynamic>> createPoll({
    required String question,
    required List<String> options,
  }) => caller.callServerEndpoint<Map<String, dynamic>>(
    'poll',
    'createPoll',
    {
      'question': question,
      'options': options,
    },
  );

  /// Delete a poll
  _i2.Future<Map<String, dynamic>> deletePoll({required int pollId}) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'poll',
        'deletePoll',
        {'pollId': pollId},
      );
}

/// {@category Endpoint}
class EndpointPost extends _i1.EndpointRef {
  EndpointPost(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'post';

  _i2.Future<Map<String, dynamic>> getPosts({
    String? city,
    String? tags,
    String? userIdx,
    String? cursor,
  }) => caller.callServerEndpoint<Map<String, dynamic>>(
    'post',
    'getPosts',
    {
      'city': city,
      'tags': tags,
      'userIdx': userIdx,
      'cursor': cursor,
    },
  );

  /// Get posts with filtering and pagination
  /// Create a new post
  _i2.Future<Map<String, dynamic>> createPost({
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
    List<String>? tags,
    List<String>? peopleTaqqed,
  }) => caller.callServerEndpoint<Map<String, dynamic>>(
    'post',
    'createPost',
    {
      'text': text,
      'image': image,
      'location': location,
      'latitude': latitude,
      'longitude': longitude,
      'city': city,
      'state': state,
      'country': country,
      'description': description,
      'canReply': canReply,
      'isPublic': isPublic,
      'retweetedPostId': retweetedPostId,
      'pollId': pollId,
      'tags': tags,
      'peopleTaqqed': peopleTaqqed,
    },
  );
}

/// {@category Endpoint}
class EndpointSavedPost extends _i1.EndpointRef {
  EndpointSavedPost(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'savedPost';

  /// Toggle save/unsave a post for the authenticated user
  _i2.Future<Map<String, dynamic>> toggleSavePost({required String? post_id}) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'savedPost',
        'toggleSavePost',
        {'post_id': post_id},
      );

  /// Get all saved posts for the authenticated user
  _i2.Future<Map<String, dynamic>> getSavedPosts({
    required int page,
    required int pageSize,
  }) => caller.callServerEndpoint<Map<String, dynamic>>(
    'savedPost',
    'getSavedPosts',
    {
      'page': page,
      'pageSize': pageSize,
    },
  );

  /// Check if a post is saved by the authenticated user
  _i2.Future<Map<String, dynamic>> checkIfPostSaved({required int postId}) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'savedPost',
        'checkIfPostSaved',
        {'postId': postId},
      );

  /// Get count of saved posts for the authenticated user
  _i2.Future<Map<String, dynamic>> getSavedPostsCount() =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'savedPost',
        'getSavedPostsCount',
        {},
      );
}

/// {@category Endpoint}
class EndpointStory extends _i1.EndpointRef {
  EndpointStory(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'story';

  /// Create a new story
  _i2.Future<Map<String, dynamic>> createStory({
    required String media_url,
    String? latitude,
    String? longitude,
  }) => caller.callServerEndpoint<Map<String, dynamic>>(
    'story',
    'createStory',
    {
      'media_url': media_url,
      'latitude': latitude,
      'longitude': longitude,
    },
  );

  /// Get all stories (my stories + other users' stories)
  _i2.Future<Map<String, dynamic>> getStories({required String page}) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'story',
        'getStories',
        {'page': page},
      );

  /// Delete a story
  _i2.Future<Map<String, dynamic>> deleteStory(int storyId) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'story',
        'deleteStory',
        {'storyId': storyId},
      );
}

/// {@category Endpoint}
class EndpointTag extends _i1.EndpointRef {
  EndpointTag(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'tag';

  /// Get tags with optional filtering, search, and pagination
  _i2.Future<Map<String, dynamic>> getTags({
    String? search,
    String? noImage,
    String? hideCount,
    String? page,
  }) => caller.callServerEndpoint<Map<String, dynamic>>(
    'tag',
    'getTags',
    {
      'search': search,
      'noImage': noImage,
      'hideCount': hideCount,
      'page': page,
    },
  );

  /// Get a single tag by ID
  _i2.Future<Map<String, dynamic>> getTagById(int id) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'tag',
        'getTagById',
        {'id': id},
      );

  /// Create a new tag
  _i2.Future<Map<String, dynamic>> createTag(Map<String, dynamic> tagData) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'tag',
        'createTag',
        {'tagData': tagData},
      );

  /// Update an existing tag
  _i2.Future<Map<String, dynamic>> updateTag(
    int id,
    Map<String, dynamic> tagData,
  ) => caller.callServerEndpoint<Map<String, dynamic>>(
    'tag',
    'updateTag',
    {
      'id': id,
      'tagData': tagData,
    },
  );

  /// Delete a tag
  _i2.Future<Map<String, dynamic>> deleteTag(int id) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'tag',
        'deleteTag',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointUser extends _i1.EndpointRef {
  EndpointUser(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'user';

  /// Get a user by ID
  _i2.Future<_i3.User?> getUser(int userId) =>
      caller.callServerEndpoint<_i3.User?>(
        'user',
        'getUser',
        {'userId': userId},
      );

  /// Create a new user
  _i2.Future<_i3.User> createUser(
    String name,
    String? image,
  ) => caller.callServerEndpoint<_i3.User>(
    'user',
    'createUser',
    {
      'name': name,
      'image': image,
    },
  );

  /// Get all users
  _i2.Future<List<_i3.User>> getAllUsers() =>
      caller.callServerEndpoint<List<_i3.User>>(
        'user',
        'getAllUsers',
        {},
      );
}

/// {@category Endpoint}
class EndpointUserProfile extends _i1.EndpointRef {
  EndpointUserProfile(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'userProfile';

  _i2.Future<_i4.UserProfile?> getProfile() =>
      caller.callServerEndpoint<_i4.UserProfile?>(
        'userProfile',
        'getProfile',
        {},
      );

  _i2.Future<Object> updateProfile({
    String? name,
    String? email,
    String? phoneNumber,
    String? image,
    String? username,
    String? userIdx,
  }) => caller.callServerEndpoint<Object>(
    'userProfile',
    'updateProfile',
    {
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'image': image,
      'username': username,
      'userIdx': userIdx,
    },
  );

  _i2.Future<_i4.UserProfile> fullUpdateProfile({
    String? name,
    String? email,
    String? phoneNumber,
    String? image,
    String? username,
  }) => caller.callServerEndpoint<_i4.UserProfile>(
    'userProfile',
    'fullUpdateProfile',
    {
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'image': image,
      'username': username,
    },
  );

  _i2.Future<_i4.UserProfile> createProfile({
    required String name,
    String? email,
    String? phoneNumber,
    String? image,
  }) => caller.callServerEndpoint<_i4.UserProfile>(
    'userProfile',
    'createProfile',
    {
      'name': name,
      'email': email,
      'phoneNumber': phoneNumber,
      'image': image,
    },
  );
}

/// {@category Endpoint}
class EndpointVote extends _i1.EndpointRef {
  EndpointVote(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'vote';

  /// Record a vote for a poll option
  _i2.Future<Map<String, dynamic>> vote({required int pollOptionId}) =>
      caller.callServerEndpoint<Map<String, dynamic>>(
        'vote',
        'vote',
        {'pollOptionId': pollOptionId},
      );
}

class Modules {
  Modules(Client client) {
    auth = _i5.Caller(client);
  }

  late final _i5.Caller auth;
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    @Deprecated(
      'Use authKeyProvider instead. This will be removed in future releases.',
    )
    super.authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )?
    onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
         host,
         _i6.Protocol(),
         securityContext: securityContext,
         streamingConnectionTimeout: streamingConnectionTimeout,
         connectionTimeout: connectionTimeout,
         onFailedCall: onFailedCall,
         onSucceededCall: onSucceededCall,
         disconnectStreamsOnLostInternetConnection:
             disconnectStreamsOnLostInternetConnection,
       ) {
    analysis = EndpointAnalysis(this);
    auth = EndpointAuth(this);
    city = EndpointCity(this);
    like = EndpointLike(this);
    map = EndpointMap(this);
    poll = EndpointPoll(this);
    post = EndpointPost(this);
    savedPost = EndpointSavedPost(this);
    story = EndpointStory(this);
    tag = EndpointTag(this);
    user = EndpointUser(this);
    userProfile = EndpointUserProfile(this);
    vote = EndpointVote(this);
    modules = Modules(this);
  }

  late final EndpointAnalysis analysis;

  late final EndpointAuth auth;

  late final EndpointCity city;

  late final EndpointLike like;

  late final EndpointMap map;

  late final EndpointPoll poll;

  late final EndpointPost post;

  late final EndpointSavedPost savedPost;

  late final EndpointStory story;

  late final EndpointTag tag;

  late final EndpointUser user;

  late final EndpointUserProfile userProfile;

  late final EndpointVote vote;

  late final Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
    'analysis': analysis,
    'auth': auth,
    'city': city,
    'like': like,
    'map': map,
    'poll': poll,
    'post': post,
    'savedPost': savedPost,
    'story': story,
    'tag': tag,
    'user': user,
    'userProfile': userProfile,
    'vote': vote,
  };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {
    'auth': modules.auth,
  };
}
