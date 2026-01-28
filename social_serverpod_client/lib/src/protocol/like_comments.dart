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

abstract class LikeComment implements _i1.SerializableModel {
  LikeComment._({
    this.id,
    this.userId,
    this.commentId,
    this.createdAt,
  });

  factory LikeComment({
    int? id,
    int? userId,
    int? commentId,
    DateTime? createdAt,
  }) = _LikeCommentImpl;

  factory LikeComment.fromJson(Map<String, dynamic> jsonSerialization) {
    return LikeComment(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      commentId: jsonSerialization['commentId'] as int?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? userId;

  int? commentId;

  DateTime? createdAt;

  /// Returns a shallow copy of this [LikeComment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  LikeComment copyWith({
    int? id,
    int? userId,
    int? commentId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'LikeComment',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (commentId != null) 'commentId': commentId,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LikeCommentImpl extends LikeComment {
  _LikeCommentImpl({
    int? id,
    int? userId,
    int? commentId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         userId: userId,
         commentId: commentId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [LikeComment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  LikeComment copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    Object? commentId = _Undefined,
    Object? createdAt = _Undefined,
  }) {
    return LikeComment(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      commentId: commentId is int? ? commentId : this.commentId,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}
