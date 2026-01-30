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
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/analysis_endpoint.dart' as _i2;
import '../endpoints/authentication.dart' as _i3;
import '../endpoints/city_endpoint.dart' as _i4;
import '../endpoints/map_endpoint.dart' as _i5;
import '../endpoints/poll_endpoint.dart' as _i6;
import '../endpoints/post_endpoint.dart' as _i7;
import '../endpoints/user_endpoint.dart' as _i8;
import '../endpoints/user_profile_endpoint.dart' as _i9;
import '../endpoints/vote_endpoint.dart' as _i10;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i11;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'analysis': _i2.AnalysisEndpoint()
        ..initialize(
          server,
          'analysis',
          null,
        ),
      'auth': _i3.AuthEndpoint()
        ..initialize(
          server,
          'auth',
          null,
        ),
      'city': _i4.CityEndpoint()
        ..initialize(
          server,
          'city',
          null,
        ),
      'map': _i5.MapEndpoint()
        ..initialize(
          server,
          'map',
          null,
        ),
      'poll': _i6.PollEndpoint()
        ..initialize(
          server,
          'poll',
          null,
        ),
      'post': _i7.PostEndpoint()
        ..initialize(
          server,
          'post',
          null,
        ),
      'user': _i8.UserEndpoint()
        ..initialize(
          server,
          'user',
          null,
        ),
      'userProfile': _i9.UserProfileEndpoint()
        ..initialize(
          server,
          'userProfile',
          null,
        ),
      'vote': _i10.VoteEndpoint()
        ..initialize(
          server,
          'vote',
          null,
        ),
    };
    connectors['analysis'] = _i1.EndpointConnector(
      name: 'analysis',
      endpoint: endpoints['analysis']!,
      methodConnectors: {
        'getTags': _i1.MethodConnector(
          name: 'getTags',
          params: {
            'page': _i1.ParameterDescription(
              name: 'page',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['analysis'] as _i2.AnalysisEndpoint).getTags(
                    session,
                    page: params['page'],
                  ),
        ),
      },
    );
    connectors['auth'] = _i1.EndpointConnector(
      name: 'auth',
      endpoint: endpoints['auth']!,
      methodConnectors: {
        'emailSignUp': _i1.MethodConnector(
          name: 'emailSignUp',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'userName': _i1.ParameterDescription(
              name: 'userName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['auth'] as _i3.AuthEndpoint).emailSignUp(
                session,
                params['email'],
                params['password'],
                params['userName'],
              ),
        ),
        'emailLogin': _i1.MethodConnector(
          name: 'emailLogin',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['auth'] as _i3.AuthEndpoint).emailLogin(
                session,
                params['email'],
                params['password'],
              ),
        ),
      },
    );
    connectors['city'] = _i1.EndpointConnector(
      name: 'city',
      endpoint: endpoints['city']!,
      methodConnectors: {
        'getCities': _i1.MethodConnector(
          name: 'getCities',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'search': _i1.ParameterDescription(
              name: 'search',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'noImage': _i1.ParameterDescription(
              name: 'noImage',
              type: _i1.getType<bool?>(),
              nullable: true,
            ),
            'hideCount': _i1.ParameterDescription(
              name: 'hideCount',
              type: _i1.getType<bool?>(),
              nullable: true,
            ),
            'page': _i1.ParameterDescription(
              name: 'page',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['city'] as _i4.CityEndpoint).getCities(
                session,
                id: params['id'],
                search: params['search'],
                noImage: params['noImage'],
                hideCount: params['hideCount'],
                page: params['page'],
              ),
        ),
        'createCity': _i1.MethodConnector(
          name: 'createCity',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'image': _i1.ParameterDescription(
              name: 'image',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'division': _i1.ParameterDescription(
              name: 'division',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'state': _i1.ParameterDescription(
              name: 'state',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'country': _i1.ParameterDescription(
              name: 'country',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['city'] as _i4.CityEndpoint).createCity(
                session,
                name: params['name'],
                image: params['image'],
                division: params['division'],
                state: params['state'],
                country: params['country'],
              ),
        ),
        'updateCity': _i1.MethodConnector(
          name: 'updateCity',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'image': _i1.ParameterDescription(
              name: 'image',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'division': _i1.ParameterDescription(
              name: 'division',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'state': _i1.ParameterDescription(
              name: 'state',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'country': _i1.ParameterDescription(
              name: 'country',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['city'] as _i4.CityEndpoint).updateCity(
                session,
                id: params['id'],
                name: params['name'],
                image: params['image'],
                division: params['division'],
                state: params['state'],
                country: params['country'],
              ),
        ),
      },
    );
    connectors['map'] = _i1.EndpointConnector(
      name: 'map',
      endpoint: endpoints['map']!,
      methodConnectors: {
        'getMapData': _i1.MethodConnector(
          name: 'getMapData',
          params: {
            'min_lat': _i1.ParameterDescription(
              name: 'min_lat',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'max_lat': _i1.ParameterDescription(
              name: 'max_lat',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'min_lng': _i1.ParameterDescription(
              name: 'min_lng',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'max_lng': _i1.ParameterDescription(
              name: 'max_lng',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'zoom': _i1.ParameterDescription(
              name: 'zoom',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'page': _i1.ParameterDescription(
              name: 'page',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'pageSize': _i1.ParameterDescription(
              name: 'pageSize',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'tags': _i1.ParameterDescription(
              name: 'tags',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['map'] as _i5.MapEndpoint).getMapData(
                session,
                min_lat: params['min_lat'],
                max_lat: params['max_lat'],
                min_lng: params['min_lng'],
                max_lng: params['max_lng'],
                zoom: params['zoom'],
                page: params['page'],
                pageSize: params['pageSize'],
                tags: params['tags'],
              ),
        ),
      },
    );
    connectors['poll'] = _i1.EndpointConnector(
      name: 'poll',
      endpoint: endpoints['poll']!,
      methodConnectors: {
        'getPolls': _i1.MethodConnector(
          name: 'getPolls',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['poll'] as _i6.PollEndpoint).getPolls(session),
        ),
        'createPoll': _i1.MethodConnector(
          name: 'createPoll',
          params: {
            'question': _i1.ParameterDescription(
              name: 'question',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'options': _i1.ParameterDescription(
              name: 'options',
              type: _i1.getType<List<String>>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['poll'] as _i6.PollEndpoint).createPoll(
                session,
                question: params['question'],
                options: params['options'],
              ),
        ),
        'deletePoll': _i1.MethodConnector(
          name: 'deletePoll',
          params: {
            'pollId': _i1.ParameterDescription(
              name: 'pollId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['poll'] as _i6.PollEndpoint).deletePoll(
                session,
                pollId: params['pollId'],
              ),
        ),
      },
    );
    connectors['post'] = _i1.EndpointConnector(
      name: 'post',
      endpoint: endpoints['post']!,
      methodConnectors: {
        'getPosts': _i1.MethodConnector(
          name: 'getPosts',
          params: {
            'city': _i1.ParameterDescription(
              name: 'city',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'tags': _i1.ParameterDescription(
              name: 'tags',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'userIdx': _i1.ParameterDescription(
              name: 'userIdx',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'cursor': _i1.ParameterDescription(
              name: 'cursor',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['post'] as _i7.PostEndpoint).getPosts(
                session,
                city: params['city'],
                tags: params['tags'],
                userIdx: params['userIdx'],
                cursor: params['cursor'],
              ),
        ),
        'createPost': _i1.MethodConnector(
          name: 'createPost',
          params: {
            'text': _i1.ParameterDescription(
              name: 'text',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'image': _i1.ParameterDescription(
              name: 'image',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'location': _i1.ParameterDescription(
              name: 'location',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'latitude': _i1.ParameterDescription(
              name: 'latitude',
              type: _i1.getType<double?>(),
              nullable: true,
            ),
            'longitude': _i1.ParameterDescription(
              name: 'longitude',
              type: _i1.getType<double?>(),
              nullable: true,
            ),
            'city': _i1.ParameterDescription(
              name: 'city',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'state': _i1.ParameterDescription(
              name: 'state',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'country': _i1.ParameterDescription(
              name: 'country',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'description': _i1.ParameterDescription(
              name: 'description',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'canReply': _i1.ParameterDescription(
              name: 'canReply',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'isPublic': _i1.ParameterDescription(
              name: 'isPublic',
              type: _i1.getType<bool?>(),
              nullable: true,
            ),
            'retweetedPostId': _i1.ParameterDescription(
              name: 'retweetedPostId',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
            'pollId': _i1.ParameterDescription(
              name: 'pollId',
              type: _i1.getType<int?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['post'] as _i7.PostEndpoint).createPost(
                session,
                text: params['text'],
                image: params['image'],
                location: params['location'],
                latitude: params['latitude'],
                longitude: params['longitude'],
                city: params['city'],
                state: params['state'],
                country: params['country'],
                description: params['description'],
                canReply: params['canReply'],
                isPublic: params['isPublic'],
                retweetedPostId: params['retweetedPostId'],
                pollId: params['pollId'],
              ),
        ),
      },
    );
    connectors['user'] = _i1.EndpointConnector(
      name: 'user',
      endpoint: endpoints['user']!,
      methodConnectors: {
        'getUser': _i1.MethodConnector(
          name: 'getUser',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['user'] as _i8.UserEndpoint).getUser(
                session,
                params['userId'],
              ),
        ),
        'createUser': _i1.MethodConnector(
          name: 'createUser',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'image': _i1.ParameterDescription(
              name: 'image',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['user'] as _i8.UserEndpoint).createUser(
                session,
                params['name'],
                params['image'],
              ),
        ),
        'getAllUsers': _i1.MethodConnector(
          name: 'getAllUsers',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async =>
                  (endpoints['user'] as _i8.UserEndpoint).getAllUsers(session),
        ),
      },
    );
    connectors['userProfile'] = _i1.EndpointConnector(
      name: 'userProfile',
      endpoint: endpoints['userProfile']!,
      methodConnectors: {
        'getProfile': _i1.MethodConnector(
          name: 'getProfile',
          params: {},
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['userProfile'] as _i9.UserProfileEndpoint)
                  .getProfile(session),
        ),
        'updateProfile': _i1.MethodConnector(
          name: 'updateProfile',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'phoneNumber': _i1.ParameterDescription(
              name: 'phoneNumber',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'image': _i1.ParameterDescription(
              name: 'image',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'username': _i1.ParameterDescription(
              name: 'username',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'userIdx': _i1.ParameterDescription(
              name: 'userIdx',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['userProfile'] as _i9.UserProfileEndpoint)
                  .updateProfile(
                    session,
                    name: params['name'],
                    email: params['email'],
                    phoneNumber: params['phoneNumber'],
                    image: params['image'],
                    username: params['username'],
                    userIdx: params['userIdx'],
                  ),
        ),
        'fullUpdateProfile': _i1.MethodConnector(
          name: 'fullUpdateProfile',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'phoneNumber': _i1.ParameterDescription(
              name: 'phoneNumber',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'image': _i1.ParameterDescription(
              name: 'image',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'username': _i1.ParameterDescription(
              name: 'username',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['userProfile'] as _i9.UserProfileEndpoint)
                  .fullUpdateProfile(
                    session,
                    name: params['name'],
                    email: params['email'],
                    phoneNumber: params['phoneNumber'],
                    image: params['image'],
                    username: params['username'],
                  ),
        ),
        'createProfile': _i1.MethodConnector(
          name: 'createProfile',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'phoneNumber': _i1.ParameterDescription(
              name: 'phoneNumber',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'image': _i1.ParameterDescription(
              name: 'image',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['userProfile'] as _i9.UserProfileEndpoint)
                  .createProfile(
                    session,
                    name: params['name'],
                    email: params['email'],
                    phoneNumber: params['phoneNumber'],
                    image: params['image'],
                  ),
        ),
      },
    );
    connectors['vote'] = _i1.EndpointConnector(
      name: 'vote',
      endpoint: endpoints['vote']!,
      methodConnectors: {
        'vote': _i1.MethodConnector(
          name: 'vote',
          params: {
            'pollOptionId': _i1.ParameterDescription(
              name: 'pollOptionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call:
              (
                _i1.Session session,
                Map<String, dynamic> params,
              ) async => (endpoints['vote'] as _i10.VoteEndpoint).vote(
                session,
                pollOptionId: params['pollOptionId'],
              ),
        ),
      },
    );
    modules['serverpod_auth'] = _i11.Endpoints()..initializeEndpoints(server);
  }
}
