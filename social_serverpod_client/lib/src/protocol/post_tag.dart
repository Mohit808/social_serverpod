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

abstract class PostTag implements _i1.SerializableModel {
  PostTag._({
    this.id,
    required this.postId,
    required this.tagId,
  });

  factory PostTag({
    int? id,
    required int postId,
    required int tagId,
  }) = _PostTagImpl;

  factory PostTag.fromJson(Map<String, dynamic> jsonSerialization) {
    return PostTag(
      id: jsonSerialization['id'] as int?,
      postId: jsonSerialization['postId'] as int,
      tagId: jsonSerialization['tagId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int postId;

  int tagId;

  /// Returns a shallow copy of this [PostTag]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PostTag copyWith({
    int? id,
    int? postId,
    int? tagId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PostTag',
      if (id != null) 'id': id,
      'postId': postId,
      'tagId': tagId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PostTagImpl extends PostTag {
  _PostTagImpl({
    int? id,
    required int postId,
    required int tagId,
  }) : super._(
         id: id,
         postId: postId,
         tagId: tagId,
       );

  /// Returns a shallow copy of this [PostTag]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PostTag copyWith({
    Object? id = _Undefined,
    int? postId,
    int? tagId,
  }) {
    return PostTag(
      id: id is int? ? id : this.id,
      postId: postId ?? this.postId,
      tagId: tagId ?? this.tagId,
    );
  }
}
