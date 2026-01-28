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

abstract class Post implements _i1.SerializableModel {
  Post._({
    this.id,
    this.userId,
    this.text,
    this.image,
    this.location,
    this.latitude,
    this.longitude,
    this.cityId,
    this.description,
    this.canReply,
    required this.isPublic,
    required this.likesCount,
    required this.commentsCount,
    required this.viewsCount,
    required this.retweetCount,
    this.retweetedPostId,
    this.pollId,
    required this.isDeleted,
    required this.isReported,
    required this.isArchived,
    this.createdAt,
    this.updatedAt,
  });

  factory Post({
    int? id,
    int? userId,
    String? text,
    String? image,
    String? location,
    double? latitude,
    double? longitude,
    int? cityId,
    String? description,
    int? canReply,
    required bool isPublic,
    required int likesCount,
    required int commentsCount,
    required int viewsCount,
    required int retweetCount,
    int? retweetedPostId,
    int? pollId,
    required bool isDeleted,
    required bool isReported,
    required bool isArchived,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _PostImpl;

  factory Post.fromJson(Map<String, dynamic> jsonSerialization) {
    return Post(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      text: jsonSerialization['text'] as String?,
      image: jsonSerialization['image'] as String?,
      location: jsonSerialization['location'] as String?,
      latitude: (jsonSerialization['latitude'] as num?)?.toDouble(),
      longitude: (jsonSerialization['longitude'] as num?)?.toDouble(),
      cityId: jsonSerialization['cityId'] as int?,
      description: jsonSerialization['description'] as String?,
      canReply: jsonSerialization['canReply'] as int?,
      isPublic: jsonSerialization['isPublic'] as bool,
      likesCount: jsonSerialization['likesCount'] as int,
      commentsCount: jsonSerialization['commentsCount'] as int,
      viewsCount: jsonSerialization['viewsCount'] as int,
      retweetCount: jsonSerialization['retweetCount'] as int,
      retweetedPostId: jsonSerialization['retweetedPostId'] as int?,
      pollId: jsonSerialization['pollId'] as int?,
      isDeleted: jsonSerialization['isDeleted'] as bool,
      isReported: jsonSerialization['isReported'] as bool,
      isArchived: jsonSerialization['isArchived'] as bool,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? userId;

  String? text;

  String? image;

  String? location;

  double? latitude;

  double? longitude;

  int? cityId;

  String? description;

  int? canReply;

  bool isPublic;

  int likesCount;

  int commentsCount;

  int viewsCount;

  int retweetCount;

  int? retweetedPostId;

  int? pollId;

  bool isDeleted;

  bool isReported;

  bool isArchived;

  DateTime? createdAt;

  DateTime? updatedAt;

  /// Returns a shallow copy of this [Post]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Post copyWith({
    int? id,
    int? userId,
    String? text,
    String? image,
    String? location,
    double? latitude,
    double? longitude,
    int? cityId,
    String? description,
    int? canReply,
    bool? isPublic,
    int? likesCount,
    int? commentsCount,
    int? viewsCount,
    int? retweetCount,
    int? retweetedPostId,
    int? pollId,
    bool? isDeleted,
    bool? isReported,
    bool? isArchived,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Post',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (text != null) 'text': text,
      if (image != null) 'image': image,
      if (location != null) 'location': location,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (cityId != null) 'cityId': cityId,
      if (description != null) 'description': description,
      if (canReply != null) 'canReply': canReply,
      'isPublic': isPublic,
      'likesCount': likesCount,
      'commentsCount': commentsCount,
      'viewsCount': viewsCount,
      'retweetCount': retweetCount,
      if (retweetedPostId != null) 'retweetedPostId': retweetedPostId,
      if (pollId != null) 'pollId': pollId,
      'isDeleted': isDeleted,
      'isReported': isReported,
      'isArchived': isArchived,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PostImpl extends Post {
  _PostImpl({
    int? id,
    int? userId,
    String? text,
    String? image,
    String? location,
    double? latitude,
    double? longitude,
    int? cityId,
    String? description,
    int? canReply,
    required bool isPublic,
    required int likesCount,
    required int commentsCount,
    required int viewsCount,
    required int retweetCount,
    int? retweetedPostId,
    int? pollId,
    required bool isDeleted,
    required bool isReported,
    required bool isArchived,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         text: text,
         image: image,
         location: location,
         latitude: latitude,
         longitude: longitude,
         cityId: cityId,
         description: description,
         canReply: canReply,
         isPublic: isPublic,
         likesCount: likesCount,
         commentsCount: commentsCount,
         viewsCount: viewsCount,
         retweetCount: retweetCount,
         retweetedPostId: retweetedPostId,
         pollId: pollId,
         isDeleted: isDeleted,
         isReported: isReported,
         isArchived: isArchived,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Post]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Post copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    Object? text = _Undefined,
    Object? image = _Undefined,
    Object? location = _Undefined,
    Object? latitude = _Undefined,
    Object? longitude = _Undefined,
    Object? cityId = _Undefined,
    Object? description = _Undefined,
    Object? canReply = _Undefined,
    bool? isPublic,
    int? likesCount,
    int? commentsCount,
    int? viewsCount,
    int? retweetCount,
    Object? retweetedPostId = _Undefined,
    Object? pollId = _Undefined,
    bool? isDeleted,
    bool? isReported,
    bool? isArchived,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
  }) {
    return Post(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      text: text is String? ? text : this.text,
      image: image is String? ? image : this.image,
      location: location is String? ? location : this.location,
      latitude: latitude is double? ? latitude : this.latitude,
      longitude: longitude is double? ? longitude : this.longitude,
      cityId: cityId is int? ? cityId : this.cityId,
      description: description is String? ? description : this.description,
      canReply: canReply is int? ? canReply : this.canReply,
      isPublic: isPublic ?? this.isPublic,
      likesCount: likesCount ?? this.likesCount,
      commentsCount: commentsCount ?? this.commentsCount,
      viewsCount: viewsCount ?? this.viewsCount,
      retweetCount: retweetCount ?? this.retweetCount,
      retweetedPostId: retweetedPostId is int?
          ? retweetedPostId
          : this.retweetedPostId,
      pollId: pollId is int? ? pollId : this.pollId,
      isDeleted: isDeleted ?? this.isDeleted,
      isReported: isReported ?? this.isReported,
      isArchived: isArchived ?? this.isArchived,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
    );
  }
}
