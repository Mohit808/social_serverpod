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

  _i2.Future<_i4.UserProfile> updateProfile({
    String? name,
    String? email,
    String? phoneNumber,
    String? image,
    String? username,
    String? userIdx,
  }) => caller.callServerEndpoint<_i4.UserProfile>(
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
    auth = EndpointAuth(this);
    user = EndpointUser(this);
    userProfile = EndpointUserProfile(this);
    modules = Modules(this);
  }

  late final EndpointAuth auth;

  late final EndpointUser user;

  late final EndpointUserProfile userProfile;

  late final Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
    'auth': auth,
    'user': user,
    'userProfile': userProfile,
  };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {
    'auth': modules.auth,
  };
}
