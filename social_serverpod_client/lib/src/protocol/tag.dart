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

abstract class Tag implements _i1.SerializableModel {
  Tag._({
    this.id,
    required this.name,
    this.image,
    this.color,
    required this.priority,
    this.createdAt,
  });

  factory Tag({
    int? id,
    required String name,
    String? image,
    String? color,
    required int priority,
    DateTime? createdAt,
  }) = _TagImpl;

  factory Tag.fromJson(Map<String, dynamic> jsonSerialization) {
    return Tag(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      image: jsonSerialization['image'] as String?,
      color: jsonSerialization['color'] as String?,
      priority: jsonSerialization['priority'] as int,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String? image;

  String? color;

  int priority;

  DateTime? createdAt;

  /// Returns a shallow copy of this [Tag]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Tag copyWith({
    int? id,
    String? name,
    String? image,
    String? color,
    int? priority,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Tag',
      if (id != null) 'id': id,
      'name': name,
      if (image != null) 'image': image,
      if (color != null) 'color': color,
      'priority': priority,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TagImpl extends Tag {
  _TagImpl({
    int? id,
    required String name,
    String? image,
    String? color,
    required int priority,
    DateTime? createdAt,
  }) : super._(
         id: id,
         name: name,
         image: image,
         color: color,
         priority: priority,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [Tag]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Tag copyWith({
    Object? id = _Undefined,
    String? name,
    Object? image = _Undefined,
    Object? color = _Undefined,
    int? priority,
    Object? createdAt = _Undefined,
  }) {
    return Tag(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      image: image is String? ? image : this.image,
      color: color is String? ? color : this.color,
      priority: priority ?? this.priority,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}
