import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart';
import '../generated/protocol.dart';


class UserProfileEndpoint extends Endpoint {

  Future<UserProfile?> getProfile(Session session) async {
    try {
      final authenticatedUser = session.authenticated;

      if (authenticatedUser == null) {
        throw Exception('Unauthorized: You must be logged in to create a profile');
      }

      // Use the authenticated user's ID instead of passing it as parameter
      final userId = authenticatedUser.userId;

      var profile = await UserProfile.db.findFirstRow(
        session,
        where: (t) => t.userId.equals(userId),
      );

      if (profile == null) {
        throw Exception('User not found');
      }

      return profile;
    } catch (e) {
      throw Exception('User profile not found: ${e.toString()}');
    }
  }

  Future<Object> updateProfile(
    Session session, {
    String? name,
    String? email,
    String? phoneNumber,
    String? image,
    String? username,
    String? userIdx,
  }) async {
    // Validate required field
    if (name == null || name.isEmpty) {
      throw Exception('Name is required');
    }

    // final authenticatedUser = session.authenticated;
    //
    // if (authenticatedUser == null) {
    //   throw Exception('Unauthorized: You must be logged in to create a profile');
    // }

    // Use the authenticated user's ID instead of passing it as parameter
    // final userId = authenticatedUser.userId;

    int userId=int.parse("${userIdx??1}");
    try {
      // Find existing profile
      var profile = await UserProfile.db.findFirstRow(
        session,
        where: (t) => t.userId.equals(userId),
      );

      if (profile == null) {
        throw Exception('User profile does not exist');
      }

      // Update fields (partial update)
      if (name != null) profile.name = name;
      if (email != null) profile.email = email;
      if (phoneNumber != null) profile.phoneNumber = phoneNumber;
      if (image != null) profile.image = image;
      if (username != null) {
        // Check if username is already taken
        var existingUsername = await UserProfile.db.findFirstRow(
          session,
          where: (t) => t.username.equals(username) & t.id.notEquals(profile.id!),
        );
        
        if (existingUsername != null) {
          throw Exception('Username already exists');
        }
        profile.username = username;
      }

      // Save updated profile
      // var updated = await UserProfile.db.updateRow(session, profile);


      var updated = await UserProfile.db.updateRow(session, profile);

      return {
        'message': 'User profile updated successfully.',
        'status': 200,
        'data': {
          'id': updated.id,
          'name': updated.name,
          'email': updated.email,
          'phone_number': updated.phoneNumber,
          'image': updated.image,
          'username': updated.username,
          'is_verified': updated.isVerified,
          'user_id': updated.userId,
        }
      };
      return updated;
    } catch (e) {
      if (e.toString().contains('does not exist')) {
        throw Exception('User profile does not exist');
      }
      throw Exception('Failed to update profile: ${e.toString()}');
    }
  }

  Future<UserProfile> fullUpdateProfile(
    Session session, {
    String? name,
    String? email,
    String? phoneNumber,
    String? image,
    String? username,
  }) async {
    try {

      final authenticatedUser = session.authenticated;

      if (authenticatedUser == null) {
        throw Exception('Unauthorized: You must be logged in to create a profile');
      }

      // Use the authenticated user's ID instead of passing it as parameter
      final userId = authenticatedUser.userId;

      // Find existing profile
      var profile = await UserProfile.db.findFirstRow(
        session,
        where: (t) => t.userId.equals(userId),
      );

      if (profile == null) {
        throw Exception('User profile not found');
      }

      // Update all provided fields
      if (name != null) profile.name = name;
      if (email != null) profile.email = email;
      if (phoneNumber != null) profile.phoneNumber = phoneNumber;
      if (image != null) profile.image = image;
      if (username != null) {
        // Check if username is already taken
        var existingUsername = await UserProfile.db.findFirstRow(
          session,
          where: (t) => t.username.equals(username) & t.id.notEquals(profile.id!),
        );

        if (existingUsername != null) {
          throw Exception('Username already exists');
        }
        profile.username = username;
      }

      // Save updated profile
      var updated = await UserProfile.db.updateRow(session, profile);
      return updated;
    } catch (e) {
      throw Exception('Failed to update profile: ${e.toString()}');
    }
  }

  Future<UserProfile> createProfile(
    Session session, {
    required String name,
    String? email,
    String? phoneNumber,
    String? image,
    // String? username,
  }) async {

    // print('Headers: ${session.authenticated?.authId}');
    // print('Headers: ${session.authenticated?.userId}');

    // final authenticatedUser =  session.authenticated;
    // print(authenticatedUser?.authId);
    // print(authenticatedUser?.userId);
    //
    // if (authenticatedUser == null) {
    //   throw Exception('Unauthorized: You must be logged in to create a profile');
    // }
    //
    // // Use the authenticated user's ID instead of passing it as parameter
    // final userId = await authenticatedUser.userId;

    // final userId=510;

    final lastUser = await UserProfile.db.findFirstRow(
      session,
      orderBy: (t) => t.id,
      orderDescending: true,
    );
    var userId=lastUser!.id!+1;

    var existing = await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId),
    );

    if (existing != null) {
      throw Exception('User profile already exists');
    }

    // Check if username is taken
    // var existingUsername = await UserProfile.db.findFirstRow(
    //   session,
    //   where: (t) => t.username.equals(username),
    // );

    // if (existingUsername != null) {
    //   throw Exception('Username already exists');
    // }

    // Create new profile
    var profile = UserProfile(
      userId: userId,
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      image: image,
      // username: username,
      isVerified: false,
    );

    return await UserProfile.db.insertRow(session, profile);
  }
}