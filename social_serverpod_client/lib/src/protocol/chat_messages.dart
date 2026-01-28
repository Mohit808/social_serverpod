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

abstract class ChatMessage implements _i1.SerializableModel {
  ChatMessage._({
    this.id,
    required this.senderId,
    required this.receiverId,
    required this.message,
    this.type,
    this.mediaType,
    this.mediaUrl,
    this.mediaSize,
    this.replyId,
    this.replyText,
    this.replyUser,
    required this.read,
    this.createdAt,
  });

  factory ChatMessage({
    int? id,
    required int senderId,
    required int receiverId,
    required String message,
    String? type,
    String? mediaType,
    String? mediaUrl,
    String? mediaSize,
    int? replyId,
    String? replyText,
    String? replyUser,
    required bool read,
    DateTime? createdAt,
  }) = _ChatMessageImpl;

  factory ChatMessage.fromJson(Map<String, dynamic> jsonSerialization) {
    return ChatMessage(
      id: jsonSerialization['id'] as int?,
      senderId: jsonSerialization['senderId'] as int,
      receiverId: jsonSerialization['receiverId'] as int,
      message: jsonSerialization['message'] as String,
      type: jsonSerialization['type'] as String?,
      mediaType: jsonSerialization['mediaType'] as String?,
      mediaUrl: jsonSerialization['mediaUrl'] as String?,
      mediaSize: jsonSerialization['mediaSize'] as String?,
      replyId: jsonSerialization['replyId'] as int?,
      replyText: jsonSerialization['replyText'] as String?,
      replyUser: jsonSerialization['replyUser'] as String?,
      read: jsonSerialization['read'] as bool,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int senderId;

  int receiverId;

  String message;

  String? type;

  String? mediaType;

  String? mediaUrl;

  String? mediaSize;

  int? replyId;

  String? replyText;

  String? replyUser;

  bool read;

  DateTime? createdAt;

  /// Returns a shallow copy of this [ChatMessage]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ChatMessage copyWith({
    int? id,
    int? senderId,
    int? receiverId,
    String? message,
    String? type,
    String? mediaType,
    String? mediaUrl,
    String? mediaSize,
    int? replyId,
    String? replyText,
    String? replyUser,
    bool? read,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ChatMessage',
      if (id != null) 'id': id,
      'senderId': senderId,
      'receiverId': receiverId,
      'message': message,
      if (type != null) 'type': type,
      if (mediaType != null) 'mediaType': mediaType,
      if (mediaUrl != null) 'mediaUrl': mediaUrl,
      if (mediaSize != null) 'mediaSize': mediaSize,
      if (replyId != null) 'replyId': replyId,
      if (replyText != null) 'replyText': replyText,
      if (replyUser != null) 'replyUser': replyUser,
      'read': read,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ChatMessageImpl extends ChatMessage {
  _ChatMessageImpl({
    int? id,
    required int senderId,
    required int receiverId,
    required String message,
    String? type,
    String? mediaType,
    String? mediaUrl,
    String? mediaSize,
    int? replyId,
    String? replyText,
    String? replyUser,
    required bool read,
    DateTime? createdAt,
  }) : super._(
         id: id,
         senderId: senderId,
         receiverId: receiverId,
         message: message,
         type: type,
         mediaType: mediaType,
         mediaUrl: mediaUrl,
         mediaSize: mediaSize,
         replyId: replyId,
         replyText: replyText,
         replyUser: replyUser,
         read: read,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [ChatMessage]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ChatMessage copyWith({
    Object? id = _Undefined,
    int? senderId,
    int? receiverId,
    String? message,
    Object? type = _Undefined,
    Object? mediaType = _Undefined,
    Object? mediaUrl = _Undefined,
    Object? mediaSize = _Undefined,
    Object? replyId = _Undefined,
    Object? replyText = _Undefined,
    Object? replyUser = _Undefined,
    bool? read,
    Object? createdAt = _Undefined,
  }) {
    return ChatMessage(
      id: id is int? ? id : this.id,
      senderId: senderId ?? this.senderId,
      receiverId: receiverId ?? this.receiverId,
      message: message ?? this.message,
      type: type is String? ? type : this.type,
      mediaType: mediaType is String? ? mediaType : this.mediaType,
      mediaUrl: mediaUrl is String? ? mediaUrl : this.mediaUrl,
      mediaSize: mediaSize is String? ? mediaSize : this.mediaSize,
      replyId: replyId is int? ? replyId : this.replyId,
      replyText: replyText is String? ? replyText : this.replyText,
      replyUser: replyUser is String? ? replyUser : this.replyUser,
      read: read ?? this.read,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}
