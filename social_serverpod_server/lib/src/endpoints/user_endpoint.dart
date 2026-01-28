import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class UserEndpoint extends Endpoint {
  /// Get a user by ID
  Future<User?> getUser(Session session, int userId) async {
    return await User.db.findById(session, userId);
  }

  /// Create a new user
  Future<User> createUser(
    Session session,
    String name,
    String? image,
  ) async {
    var user = User(
      name: name,
      image: image,
    );
    
    return await User.db.insertRow(session, user);
  }
  
  /// Get all users
  Future<List<User>> getAllUsers(Session session) async {
    return await User.db.find(session);
  }
}