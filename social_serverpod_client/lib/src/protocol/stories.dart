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

abstract class Story implements _i1.SerializableModel {
  Story._({
    this.id,
    required this.userId,
    required this.mediaUrl,
    required this.mediaType,
    this.createdAt,
    this.expiresAt,
    this.latitude,
    this.longitude,
  });

  factory Story({
    int? id,
    required int userId,
    required String mediaUrl,
    required String mediaType,
    DateTime? createdAt,
    DateTime? expiresAt,
    String? latitude,
    String? longitude,
  }) = _StoryImpl;

  factory Story.fromJson(Map<String, dynamic> jsonSerialization) {
    return Story(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      mediaUrl: jsonSerialization['mediaUrl'] as String,
      mediaType: jsonSerialization['mediaType'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      expiresAt: jsonSerialization['expiresAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['expiresAt']),
      latitude: jsonSerialization['latitude'] as String?,
      longitude: jsonSerialization['longitude'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  String mediaUrl;

  String mediaType;

  DateTime? createdAt;

  DateTime? expiresAt;

  String? latitude;

  String? longitude;

  /// Returns a shallow copy of this [Story]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Story copyWith({
    int? id,
    int? userId,
    String? mediaUrl,
    String? mediaType,
    DateTime? createdAt,
    DateTime? expiresAt,
    String? latitude,
    String? longitude,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Story',
      if (id != null) 'id': id,
      'userId': userId,
      'mediaUrl': mediaUrl,
      'mediaType': mediaType,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (expiresAt != null) 'expiresAt': expiresAt?.toJson(),
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoryImpl extends Story {
  _StoryImpl({
    int? id,
    required int userId,
    required String mediaUrl,
    required String mediaType,
    DateTime? createdAt,
    DateTime? expiresAt,
    String? latitude,
    String? longitude,
  }) : super._(
         id: id,
         userId: userId,
         mediaUrl: mediaUrl,
         mediaType: mediaType,
         createdAt: createdAt,
         expiresAt: expiresAt,
         latitude: latitude,
         longitude: longitude,
       );

  /// Returns a shallow copy of this [Story]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Story copyWith({
    Object? id = _Undefined,
    int? userId,
    String? mediaUrl,
    String? mediaType,
    Object? createdAt = _Undefined,
    Object? expiresAt = _Undefined,
    Object? latitude = _Undefined,
    Object? longitude = _Undefined,
  }) {
    return Story(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      mediaUrl: mediaUrl ?? this.mediaUrl,
      mediaType: mediaType ?? this.mediaType,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      expiresAt: expiresAt is DateTime? ? expiresAt : this.expiresAt,
      latitude: latitude is String? ? latitude : this.latitude,
      longitude: longitude is String? ? longitude : this.longitude,
    );
  }
}
