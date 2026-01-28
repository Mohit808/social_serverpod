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

abstract class StoryViewCount implements _i1.SerializableModel {
  StoryViewCount._({
    this.id,
    required this.storyId,
    required this.viewerId,
    this.viewedAt,
  });

  factory StoryViewCount({
    int? id,
    required int storyId,
    required int viewerId,
    DateTime? viewedAt,
  }) = _StoryViewCountImpl;

  factory StoryViewCount.fromJson(Map<String, dynamic> jsonSerialization) {
    return StoryViewCount(
      id: jsonSerialization['id'] as int?,
      storyId: jsonSerialization['storyId'] as int,
      viewerId: jsonSerialization['viewerId'] as int,
      viewedAt: jsonSerialization['viewedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['viewedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int storyId;

  int viewerId;

  DateTime? viewedAt;

  /// Returns a shallow copy of this [StoryViewCount]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoryViewCount copyWith({
    int? id,
    int? storyId,
    int? viewerId,
    DateTime? viewedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoryViewCount',
      if (id != null) 'id': id,
      'storyId': storyId,
      'viewerId': viewerId,
      if (viewedAt != null) 'viewedAt': viewedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoryViewCountImpl extends StoryViewCount {
  _StoryViewCountImpl({
    int? id,
    required int storyId,
    required int viewerId,
    DateTime? viewedAt,
  }) : super._(
         id: id,
         storyId: storyId,
         viewerId: viewerId,
         viewedAt: viewedAt,
       );

  /// Returns a shallow copy of this [StoryViewCount]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoryViewCount copyWith({
    Object? id = _Undefined,
    int? storyId,
    int? viewerId,
    Object? viewedAt = _Undefined,
  }) {
    return StoryViewCount(
      id: id is int? ? id : this.id,
      storyId: storyId ?? this.storyId,
      viewerId: viewerId ?? this.viewerId,
      viewedAt: viewedAt is DateTime? ? viewedAt : this.viewedAt,
    );
  }
}
