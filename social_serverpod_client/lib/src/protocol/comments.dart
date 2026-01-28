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

abstract class Comment implements _i1.SerializableModel {
  Comment._({
    this.id,
    this.userId,
    this.postId,
    required this.text,
    this.createdAt,
  });

  factory Comment({
    int? id,
    int? userId,
    int? postId,
    required String text,
    DateTime? createdAt,
  }) = _CommentImpl;

  factory Comment.fromJson(Map<String, dynamic> jsonSerialization) {
    return Comment(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      postId: jsonSerialization['postId'] as int?,
      text: jsonSerialization['text'] as String,
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

  int? postId;

  String text;

  DateTime? createdAt;

  /// Returns a shallow copy of this [Comment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Comment copyWith({
    int? id,
    int? userId,
    int? postId,
    String? text,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Comment',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (postId != null) 'postId': postId,
      'text': text,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CommentImpl extends Comment {
  _CommentImpl({
    int? id,
    int? userId,
    int? postId,
    required String text,
    DateTime? createdAt,
  }) : super._(
         id: id,
         userId: userId,
         postId: postId,
         text: text,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [Comment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Comment copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    Object? postId = _Undefined,
    String? text,
    Object? createdAt = _Undefined,
  }) {
    return Comment(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      postId: postId is int? ? postId : this.postId,
      text: text ?? this.text,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}
