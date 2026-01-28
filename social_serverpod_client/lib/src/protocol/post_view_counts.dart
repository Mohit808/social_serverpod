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

abstract class PostViewCount implements _i1.SerializableModel {
  PostViewCount._({
    this.id,
    required this.postId,
    this.userId,
    this.ipAddress,
    this.viewedAt,
  });

  factory PostViewCount({
    int? id,
    required int postId,
    int? userId,
    String? ipAddress,
    DateTime? viewedAt,
  }) = _PostViewCountImpl;

  factory PostViewCount.fromJson(Map<String, dynamic> jsonSerialization) {
    return PostViewCount(
      id: jsonSerialization['id'] as int?,
      postId: jsonSerialization['postId'] as int,
      userId: jsonSerialization['userId'] as int?,
      ipAddress: jsonSerialization['ipAddress'] as String?,
      viewedAt: jsonSerialization['viewedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['viewedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int postId;

  int? userId;

  String? ipAddress;

  DateTime? viewedAt;

  /// Returns a shallow copy of this [PostViewCount]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PostViewCount copyWith({
    int? id,
    int? postId,
    int? userId,
    String? ipAddress,
    DateTime? viewedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PostViewCount',
      if (id != null) 'id': id,
      'postId': postId,
      if (userId != null) 'userId': userId,
      if (ipAddress != null) 'ipAddress': ipAddress,
      if (viewedAt != null) 'viewedAt': viewedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PostViewCountImpl extends PostViewCount {
  _PostViewCountImpl({
    int? id,
    required int postId,
    int? userId,
    String? ipAddress,
    DateTime? viewedAt,
  }) : super._(
         id: id,
         postId: postId,
         userId: userId,
         ipAddress: ipAddress,
         viewedAt: viewedAt,
       );

  /// Returns a shallow copy of this [PostViewCount]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PostViewCount copyWith({
    Object? id = _Undefined,
    int? postId,
    Object? userId = _Undefined,
    Object? ipAddress = _Undefined,
    Object? viewedAt = _Undefined,
  }) {
    return PostViewCount(
      id: id is int? ? id : this.id,
      postId: postId ?? this.postId,
      userId: userId is int? ? userId : this.userId,
      ipAddress: ipAddress is String? ? ipAddress : this.ipAddress,
      viewedAt: viewedAt is DateTime? ? viewedAt : this.viewedAt,
    );
  }
}
