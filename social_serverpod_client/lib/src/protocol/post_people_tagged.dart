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

abstract class PostPeopleTagged implements _i1.SerializableModel {
  PostPeopleTagged._({
    this.id,
    required this.postId,
    required this.userProfileId,
  });

  factory PostPeopleTagged({
    int? id,
    required int postId,
    required int userProfileId,
  }) = _PostPeopleTaggedImpl;

  factory PostPeopleTagged.fromJson(Map<String, dynamic> jsonSerialization) {
    return PostPeopleTagged(
      id: jsonSerialization['id'] as int?,
      postId: jsonSerialization['postId'] as int,
      userProfileId: jsonSerialization['userProfileId'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int postId;

  int userProfileId;

  /// Returns a shallow copy of this [PostPeopleTagged]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PostPeopleTagged copyWith({
    int? id,
    int? postId,
    int? userProfileId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PostPeopleTagged',
      if (id != null) 'id': id,
      'postId': postId,
      'userProfileId': userProfileId,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PostPeopleTaggedImpl extends PostPeopleTagged {
  _PostPeopleTaggedImpl({
    int? id,
    required int postId,
    required int userProfileId,
  }) : super._(
         id: id,
         postId: postId,
         userProfileId: userProfileId,
       );

  /// Returns a shallow copy of this [PostPeopleTagged]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PostPeopleTagged copyWith({
    Object? id = _Undefined,
    int? postId,
    int? userProfileId,
  }) {
    return PostPeopleTagged(
      id: id is int? ? id : this.id,
      postId: postId ?? this.postId,
      userProfileId: userProfileId ?? this.userProfileId,
    );
  }
}
