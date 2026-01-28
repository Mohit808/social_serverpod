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

abstract class PollVote implements _i1.SerializableModel {
  PollVote._({
    this.id,
    required this.pollId,
    required this.pollOptionId,
    required this.userId,
    this.createdAt,
  });

  factory PollVote({
    int? id,
    required int pollId,
    required int pollOptionId,
    required int userId,
    DateTime? createdAt,
  }) = _PollVoteImpl;

  factory PollVote.fromJson(Map<String, dynamic> jsonSerialization) {
    return PollVote(
      id: jsonSerialization['id'] as int?,
      pollId: jsonSerialization['pollId'] as int,
      pollOptionId: jsonSerialization['pollOptionId'] as int,
      userId: jsonSerialization['userId'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int pollId;

  int pollOptionId;

  int userId;

  DateTime? createdAt;

  /// Returns a shallow copy of this [PollVote]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PollVote copyWith({
    int? id,
    int? pollId,
    int? pollOptionId,
    int? userId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PollVote',
      if (id != null) 'id': id,
      'pollId': pollId,
      'pollOptionId': pollOptionId,
      'userId': userId,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PollVoteImpl extends PollVote {
  _PollVoteImpl({
    int? id,
    required int pollId,
    required int pollOptionId,
    required int userId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         pollId: pollId,
         pollOptionId: pollOptionId,
         userId: userId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [PollVote]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PollVote copyWith({
    Object? id = _Undefined,
    int? pollId,
    int? pollOptionId,
    int? userId,
    Object? createdAt = _Undefined,
  }) {
    return PollVote(
      id: id is int? ? id : this.id,
      pollId: pollId ?? this.pollId,
      pollOptionId: pollOptionId ?? this.pollOptionId,
      userId: userId ?? this.userId,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}
