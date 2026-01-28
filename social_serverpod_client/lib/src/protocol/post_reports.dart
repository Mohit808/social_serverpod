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

abstract class PostReport implements _i1.SerializableModel {
  PostReport._({
    this.id,
    required this.userId,
    required this.postId,
    required this.reason,
    this.createdAt,
  });

  factory PostReport({
    int? id,
    required int userId,
    required int postId,
    required String reason,
    DateTime? createdAt,
  }) = _PostReportImpl;

  factory PostReport.fromJson(Map<String, dynamic> jsonSerialization) {
    return PostReport(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      postId: jsonSerialization['postId'] as int,
      reason: jsonSerialization['reason'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  int postId;

  String reason;

  DateTime? createdAt;

  /// Returns a shallow copy of this [PostReport]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PostReport copyWith({
    int? id,
    int? userId,
    int? postId,
    String? reason,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PostReport',
      if (id != null) 'id': id,
      'userId': userId,
      'postId': postId,
      'reason': reason,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PostReportImpl extends PostReport {
  _PostReportImpl({
    int? id,
    required int userId,
    required int postId,
    required String reason,
    DateTime? createdAt,
  }) : super._(
         id: id,
         userId: userId,
         postId: postId,
         reason: reason,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [PostReport]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PostReport copyWith({
    Object? id = _Undefined,
    int? userId,
    int? postId,
    String? reason,
    Object? createdAt = _Undefined,
  }) {
    return PostReport(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      postId: postId ?? this.postId,
      reason: reason ?? this.reason,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}
