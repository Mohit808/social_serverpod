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

abstract class City implements _i1.SerializableModel {
  City._({
    this.id,
    required this.name,
    this.image,
    this.division,
    this.state,
    this.country,
  });

  factory City({
    int? id,
    required String name,
    String? image,
    String? division,
    String? state,
    String? country,
  }) = _CityImpl;

  factory City.fromJson(Map<String, dynamic> jsonSerialization) {
    return City(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      image: jsonSerialization['image'] as String?,
      division: jsonSerialization['division'] as String?,
      state: jsonSerialization['state'] as String?,
      country: jsonSerialization['country'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String? image;

  String? division;

  String? state;

  String? country;

  /// Returns a shallow copy of this [City]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  City copyWith({
    int? id,
    String? name,
    String? image,
    String? division,
    String? state,
    String? country,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'City',
      if (id != null) 'id': id,
      'name': name,
      if (image != null) 'image': image,
      if (division != null) 'division': division,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CityImpl extends City {
  _CityImpl({
    int? id,
    required String name,
    String? image,
    String? division,
    String? state,
    String? country,
  }) : super._(
         id: id,
         name: name,
         image: image,
         division: division,
         state: state,
         country: country,
       );

  /// Returns a shallow copy of this [City]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  City copyWith({
    Object? id = _Undefined,
    String? name,
    Object? image = _Undefined,
    Object? division = _Undefined,
    Object? state = _Undefined,
    Object? country = _Undefined,
  }) {
    return City(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      image: image is String? ? image : this.image,
      division: division is String? ? division : this.division,
      state: state is String? ? state : this.state,
      country: country is String? ? country : this.country,
    );
  }
}
