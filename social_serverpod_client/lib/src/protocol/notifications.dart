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

abstract class Notification implements _i1.SerializableModel {
  Notification._({
    this.id,
    required this.userId,
    this.senderId,
    this.notificationType,
    this.postId,
    this.commentId,
    this.replyCommentId,
    this.pollId,
    this.message,
    required this.isRead,
    required this.isArchived,
    this.createdAt,
  });

  factory Notification({
    int? id,
    required int userId,
    int? senderId,
    String? notificationType,
    int? postId,
    int? commentId,
    int? replyCommentId,
    int? pollId,
    String? message,
    required bool isRead,
    required bool isArchived,
    DateTime? createdAt,
  }) = _NotificationImpl;

  factory Notification.fromJson(Map<String, dynamic> jsonSerialization) {
    return Notification(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      senderId: jsonSerialization['senderId'] as int?,
      notificationType: jsonSerialization['notificationType'] as String?,
      postId: jsonSerialization['postId'] as int?,
      commentId: jsonSerialization['commentId'] as int?,
      replyCommentId: jsonSerialization['replyCommentId'] as int?,
      pollId: jsonSerialization['pollId'] as int?,
      message: jsonSerialization['message'] as String?,
      isRead: jsonSerialization['isRead'] as bool,
      isArchived: jsonSerialization['isArchived'] as bool,
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

  int? senderId;

  String? notificationType;

  int? postId;

  int? commentId;

  int? replyCommentId;

  int? pollId;

  String? message;

  bool isRead;

  bool isArchived;

  DateTime? createdAt;

  /// Returns a shallow copy of this [Notification]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Notification copyWith({
    int? id,
    int? userId,
    int? senderId,
    String? notificationType,
    int? postId,
    int? commentId,
    int? replyCommentId,
    int? pollId,
    String? message,
    bool? isRead,
    bool? isArchived,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Notification',
      if (id != null) 'id': id,
      'userId': userId,
      if (senderId != null) 'senderId': senderId,
      if (notificationType != null) 'notificationType': notificationType,
      if (postId != null) 'postId': postId,
      if (commentId != null) 'commentId': commentId,
      if (replyCommentId != null) 'replyCommentId': replyCommentId,
      if (pollId != null) 'pollId': pollId,
      if (message != null) 'message': message,
      'isRead': isRead,
      'isArchived': isArchived,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _NotificationImpl extends Notification {
  _NotificationImpl({
    int? id,
    required int userId,
    int? senderId,
    String? notificationType,
    int? postId,
    int? commentId,
    int? replyCommentId,
    int? pollId,
    String? message,
    required bool isRead,
    required bool isArchived,
    DateTime? createdAt,
  }) : super._(
         id: id,
         userId: userId,
         senderId: senderId,
         notificationType: notificationType,
         postId: postId,
         commentId: commentId,
         replyCommentId: replyCommentId,
         pollId: pollId,
         message: message,
         isRead: isRead,
         isArchived: isArchived,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [Notification]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Notification copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? senderId = _Undefined,
    Object? notificationType = _Undefined,
    Object? postId = _Undefined,
    Object? commentId = _Undefined,
    Object? replyCommentId = _Undefined,
    Object? pollId = _Undefined,
    Object? message = _Undefined,
    bool? isRead,
    bool? isArchived,
    Object? createdAt = _Undefined,
  }) {
    return Notification(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      senderId: senderId is int? ? senderId : this.senderId,
      notificationType: notificationType is String?
          ? notificationType
          : this.notificationType,
      postId: postId is int? ? postId : this.postId,
      commentId: commentId is int? ? commentId : this.commentId,
      replyCommentId: replyCommentId is int?
          ? replyCommentId
          : this.replyCommentId,
      pollId: pollId is int? ? pollId : this.pollId,
      message: message is String? ? message : this.message,
      isRead: isRead ?? this.isRead,
      isArchived: isArchived ?? this.isArchived,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}
