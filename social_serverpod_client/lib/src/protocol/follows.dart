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

abstract class Follow implements _i1.SerializableModel {
  Follow._({
    this.id,
    required this.followerId,
    required this.followingId,
    this.createdAt,
  });

  factory Follow({
    int? id,
    required int followerId,
    required int followingId,
    DateTime? createdAt,
  }) = _FollowImpl;

  factory Follow.fromJson(Map<String, dynamic> jsonSerialization) {
    return Follow(
      id: jsonSerialization['id'] as int?,
      followerId: jsonSerialization['followerId'] as int,
      followingId: jsonSerialization['followingId'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int followerId;

  int followingId;

  DateTime? createdAt;

  /// Returns a shallow copy of this [Follow]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Follow copyWith({
    int? id,
    int? followerId,
    int? followingId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Follow',
      if (id != null) 'id': id,
      'followerId': followerId,
      'followingId': followingId,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _FollowImpl extends Follow {
  _FollowImpl({
    int? id,
    required int followerId,
    required int followingId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         followerId: followerId,
         followingId: followingId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [Follow]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Follow copyWith({
    Object? id = _Undefined,
    int? followerId,
    int? followingId,
    Object? createdAt = _Undefined,
  }) {
    return Follow(
      id: id is int? ? id : this.id,
      followerId: followerId ?? this.followerId,
      followingId: followingId ?? this.followingId,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}
