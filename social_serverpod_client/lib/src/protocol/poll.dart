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

abstract class Poll implements _i1.SerializableModel {
  Poll._({
    this.id,
    this.userId,
    required this.question,
    required this.isMultipleChoice,
    this.expiresAt,
    this.createdAt,
  });

  factory Poll({
    int? id,
    int? userId,
    required String question,
    required bool isMultipleChoice,
    DateTime? expiresAt,
    DateTime? createdAt,
  }) = _PollImpl;

  factory Poll.fromJson(Map<String, dynamic> jsonSerialization) {
    return Poll(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      question: jsonSerialization['question'] as String,
      isMultipleChoice: jsonSerialization['isMultipleChoice'] as bool,
      expiresAt: jsonSerialization['expiresAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['expiresAt']),
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

  String question;

  bool isMultipleChoice;

  DateTime? expiresAt;

  DateTime? createdAt;

  /// Returns a shallow copy of this [Poll]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Poll copyWith({
    int? id,
    int? userId,
    String? question,
    bool? isMultipleChoice,
    DateTime? expiresAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Poll',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      'question': question,
      'isMultipleChoice': isMultipleChoice,
      if (expiresAt != null) 'expiresAt': expiresAt?.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PollImpl extends Poll {
  _PollImpl({
    int? id,
    int? userId,
    required String question,
    required bool isMultipleChoice,
    DateTime? expiresAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         userId: userId,
         question: question,
         isMultipleChoice: isMultipleChoice,
         expiresAt: expiresAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [Poll]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Poll copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    String? question,
    bool? isMultipleChoice,
    Object? expiresAt = _Undefined,
    Object? createdAt = _Undefined,
  }) {
    return Poll(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      question: question ?? this.question,
      isMultipleChoice: isMultipleChoice ?? this.isMultipleChoice,
      expiresAt: expiresAt is DateTime? ? expiresAt : this.expiresAt,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}
