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

abstract class UserProfile implements _i1.SerializableModel {
  UserProfile._({
    this.id,
    this.userId,
    this.name,
    this.email,
    this.phoneNumber,
    this.image,
    this.username,
    required this.isVerified,
  });

  factory UserProfile({
    int? id,
    int? userId,
    String? name,
    String? email,
    String? phoneNumber,
    String? image,
    String? username,
    required bool isVerified,
  }) = _UserProfileImpl;

  factory UserProfile.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserProfile(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      name: jsonSerialization['name'] as String?,
      email: jsonSerialization['email'] as String?,
      phoneNumber: jsonSerialization['phoneNumber'] as String?,
      image: jsonSerialization['image'] as String?,
      username: jsonSerialization['username'] as String?,
      isVerified: jsonSerialization['isVerified'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? userId;

  String? name;

  String? email;

  String? phoneNumber;

  String? image;

  String? username;

  bool isVerified;

  /// Returns a shallow copy of this [UserProfile]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  UserProfile copyWith({
    int? id,
    int? userId,
    String? name,
    String? email,
    String? phoneNumber,
    String? image,
    String? username,
    bool? isVerified,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'UserProfile',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (phoneNumber != null) 'phoneNumber': phoneNumber,
      if (image != null) 'image': image,
      if (username != null) 'username': username,
      'isVerified': isVerified,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserProfileImpl extends UserProfile {
  _UserProfileImpl({
    int? id,
    int? userId,
    String? name,
    String? email,
    String? phoneNumber,
    String? image,
    String? username,
    required bool isVerified,
  }) : super._(
         id: id,
         userId: userId,
         name: name,
         email: email,
         phoneNumber: phoneNumber,
         image: image,
         username: username,
         isVerified: isVerified,
       );

  /// Returns a shallow copy of this [UserProfile]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  UserProfile copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    Object? name = _Undefined,
    Object? email = _Undefined,
    Object? phoneNumber = _Undefined,
    Object? image = _Undefined,
    Object? username = _Undefined,
    bool? isVerified,
  }) {
    return UserProfile(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      name: name is String? ? name : this.name,
      email: email is String? ? email : this.email,
      phoneNumber: phoneNumber is String? ? phoneNumber : this.phoneNumber,
      image: image is String? ? image : this.image,
      username: username is String? ? username : this.username,
      isVerified: isVerified ?? this.isVerified,
    );
  }
}
