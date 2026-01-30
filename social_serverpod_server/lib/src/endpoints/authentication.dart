import 'package:serverpod/serverpod.dart';
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as auth;

import '../generated/user_profile.dart';

class AuthEndpoint extends Endpoint {


  Future<Map<String, dynamic>> emailSignUp(
      Session session,
      String email,
      String password,
      String userName,
      ) async {
    // Create user with serverpod_auth
    final userInfo = await auth.Emails.createUser(
      session,
      userName,
      email,
      password,
    );

    if (userInfo == null) {
      throw Exception('Failed to create user');
    }

    // Sign in the user to get authentication key
    final authKey = await auth.UserAuthentication.signInUser(
      session,
      userInfo.id!,
      'email',
    );

    if (authKey == null) {
      throw Exception('Failed to generate authentication token');
    }

    // Create UserProfile automatically
    var profile = UserProfile(
      userId: userInfo.id!,
      name: userName,
      email: email,
      phoneNumber: null,
      image: null,
      username: null,
      isVerified: false,
    );

    var createdProfile = await UserProfile.db.insertRow(session, profile);

    // Return custom response
    return {
      "message": "User registered successfully.",
      "status": 200,
      "data": {
        "token": authKey.key,
        "userInfo": {
          "id": createdProfile.id,
          "name": createdProfile.name,
          "email": createdProfile.email,
          "phone_number": createdProfile.phoneNumber,
          "image": createdProfile.image,
          "username": createdProfile.username,
          "is_verified": createdProfile.isVerified,
          "user_id": userInfo.id,
        }
      }
    };
  }

  Future<Map<String, dynamic>> emailLogin(
      Session session,
      String email,
      String password,
      ) async {
    // Authenticate user
    final authResponse = await auth.Emails.authenticate(
      session,
      email,
      password,
    );

    if (!authResponse.success || authResponse.userInfo == null) {
      throw Exception('Invalid email or password');
    }

    // Get user profile
    var profile = await UserProfile.db.findFirstRow(
      session,
      where: (t) => t.userId.equals(authResponse.userInfo!.id!),
    );

    if (profile == null) {
      throw Exception('User profile not found');
    }

    // Return custom response
    return {
      "message": "Login successful.",
      "status": 200,
      "data": {
        "token": authResponse.key,
        "userInfo": {
          "id": profile.id,
          "name": profile.name,
          "email": profile.email,
          "phone_number": profile.phoneNumber,
          "image": profile.image,
          "username": profile.username,
          "is_verified": profile.isVerified,
          "user_id": authResponse.userInfo!.id,
        }
      }
    };
  }

  // Future<auth.AuthenticationResponse> emailSignup(
  //     Session session,
  //     String email,
  //     String password,
  //     String userName,
  //     ) async {
  //   final userInfo = await auth.Emails.createUser(
  //     session,
  //     userName,
  //     email,
  //     password,
  //   );
  //
  //   if (userInfo == null) {
  //     throw Exception('Failed to create user');
  //   }
  //
  //   // Automatically creates and returns authentication token
  //
  //   return auth.AuthenticationResponse(
  //     success: true,
  //     userInfo: userInfo,
  //     keyId: await auth.UserAuthentication.signInUser(
  //       session,
  //       userInfo.id!,
  //       'email',
  //     ).then((key) => key.id),
  //     key: await auth.UserAuthentication.signInUser(
  //       session,
  //       userInfo.id!,
  //       'email',
  //     ).then((key) => key.key),
  //   );
  // }

  // Future<auth.AuthenticationResponse> emailLogin(
  //     Session session,
  //     String email,
  //     String password,
  //     ) async {
  //   return await auth.Emails.authenticate(session, email, password);
  // }
}