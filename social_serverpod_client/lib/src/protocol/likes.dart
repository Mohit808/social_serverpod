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

abstract class Like implements _i1.SerializableModel {
  Like._({
    this.id,
    this.userId,
    required this.postId,
  });

  factory Like({
    int? id,
    int? userId,
    required int postId,
  }) = _LikeImpl;

  factory Like.fromJson(Map<String, dynamic> jsonSerialization) {
    return Like(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      postId: jsonSerialization['postId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? userId;

  int postId;

  /// Returns a shallow copy of this [Like]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Like copyWith({
    int? id,
    int? userId,
    int? postId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Like',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      'postId': postId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LikeImpl extends Like {
  _LikeImpl({
    int? id,
    int? userId,
    required int postId,
  }) : super._(
         id: id,
         userId: userId,
         postId: postId,
       );

  /// Returns a shallow copy of this [Like]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Like copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    int? postId,
  }) {
    return Like(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      postId: postId ?? this.postId,
    );
  }
}
