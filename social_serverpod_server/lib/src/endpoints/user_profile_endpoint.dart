import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';


class UserProfileEndpoint extends Endpoint {

  Future<UserProfile?> getProfile(Session session, String userId) async {
    try {
      int userIdX = int.parse(userId);
      var profile = await UserProfile.db.findFirstRow(
        session,
        where: (t) => t.userId.equals(userIdX),
      );

      if (profile == null) {
        throw Exception('User not found');
      }

      return profile;
    } catch (e) {
      throw Exception('User profile not found: ${e.toString()}');
    }
  }

  Future<UserProfile> updateProfile(
    Session session, {
    required int userId,
    String? name,
    String? email,
    String? phoneNumber,
    String? image,
    String? username,
  }) async {
    // Validate required field
    if (name == null || name.isEmpty) {
      throw Exception('Name is required');
    }

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
      var updated = await UserProfile.db.updateRow(session, profile);
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
    required int userId,
    String? name,
    String? email,
    String? phoneNumber,
    String? image,
    String? username,
  }) async {
    try {
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
    required int userId,
    required String name,
    String? email,
    String? phoneNumber,
    String? image,
    String? username,
  }) async {
    
    var existing = await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(userId),
    );

    if (existing != null) {
      throw Exception('User profile already exists');
    }

    // Check if username is taken
    var existingUsername = await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.username.equals(username),
    );

    if (existingUsername != null) {
      throw Exception('Username already exists');
    }

    // Create new profile
    var profile = UserProfile(
      userId: userId,
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      image: image,
      username: username,
      isVerified: false,
    );

    return await UserProfile.db.insertRow(session, profile);
  }
}