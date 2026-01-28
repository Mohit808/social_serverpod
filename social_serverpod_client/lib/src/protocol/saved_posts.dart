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

abstract class SavedPost implements _i1.SerializableModel {
  SavedPost._({
    this.id,
    required this.userId,
    required this.postId,
    this.savedAt,
  });

  factory SavedPost({
    int? id,
    required int userId,
    required int postId,
    DateTime? savedAt,
  }) = _SavedPostImpl;

  factory SavedPost.fromJson(Map<String, dynamic> jsonSerialization) {
    return SavedPost(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      postId: jsonSerialization['postId'] as int,
      savedAt: jsonSerialization['savedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['savedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  int postId;

  DateTime? savedAt;

  /// Returns a shallow copy of this [SavedPost]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  SavedPost copyWith({
    int? id,
    int? userId,
    int? postId,
    DateTime? savedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SavedPost',
      if (id != null) 'id': id,
      'userId': userId,
      'postId': postId,
      if (savedAt != null) 'savedAt': savedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SavedPostImpl extends SavedPost {
  _SavedPostImpl({
    int? id,
    required int userId,
    required int postId,
    DateTime? savedAt,
  }) : super._(
         id: id,
         userId: userId,
         postId: postId,
         savedAt: savedAt,
       );

  /// Returns a shallow copy of this [SavedPost]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  SavedPost copyWith({
    Object? id = _Undefined,
    int? userId,
    int? postId,
    Object? savedAt = _Undefined,
  }) {
    return SavedPost(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      postId: postId ?? this.postId,
      savedAt: savedAt is DateTime? ? savedAt : this.savedAt,
    );
  }
}
