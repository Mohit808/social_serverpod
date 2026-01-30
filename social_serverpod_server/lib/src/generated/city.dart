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
import 'package:serverpod/serverpod.dart' as _i1;

abstract class City implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  City._({
    this.id,
    required this.name,
    this.image,
    this.division,
    this.state,
    this.country,
    this.createdAt,
    this.updatedAt,
  });

  factory City({
    int? id,
    required String name,
    String? image,
    String? division,
    String? state,
    String? country,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _CityImpl;

  factory City.fromJson(Map<String, dynamic> jsonSerialization) {
    return City(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      image: jsonSerialization['image'] as String?,
      division: jsonSerialization['division'] as String?,
      state: jsonSerialization['state'] as String?,
      country: jsonSerialization['country'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = CityTable();

  static const db = CityRepository._();

  @override
  int? id;

  String name;

  String? image;

  String? division;

  String? state;

  String? country;

  DateTime? createdAt;

  DateTime? updatedAt;

  @override
  _i1.Table<int?> get table => t;

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
    DateTime? createdAt,
    DateTime? updatedAt,
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
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'City',
      if (id != null) 'id': id,
      'name': name,
      if (image != null) 'image': image,
      if (division != null) 'division': division,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  static CityInclude include() {
    return CityInclude._();
  }

  static CityIncludeList includeList({
    _i1.WhereExpressionBuilder<CityTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CityTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CityTable>? orderByList,
    CityInclude? include,
  }) {
    return CityIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(City.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(City.t),
      include: include,
    );
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
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
         id: id,
         name: name,
         image: image,
         division: division,
         state: state,
         country: country,
         createdAt: createdAt,
         updatedAt: updatedAt,
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
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
  }) {
    return City(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      image: image is String? ? image : this.image,
      division: division is String? ? division : this.division,
      state: state is String? ? state : this.state,
      country: country is String? ? country : this.country,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
    );
  }
}

class CityUpdateTable extends _i1.UpdateTable<CityTable> {
  CityUpdateTable(super.table);

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> image(String? value) => _i1.ColumnValue(
    table.image,
    value,
  );

  _i1.ColumnValue<String, String> division(String? value) => _i1.ColumnValue(
    table.division,
    value,
  );

  _i1.ColumnValue<String, String> state(String? value) => _i1.ColumnValue(
    table.state,
    value,
  );

  _i1.ColumnValue<String, String> country(String? value) => _i1.ColumnValue(
    table.country,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime? value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> updatedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.updatedAt,
        value,
      );
}

class CityTable extends _i1.Table<int?> {
  CityTable({super.tableRelation}) : super(tableName: 'cities') {
    updateTable = CityUpdateTable(this);
    name = _i1.ColumnString(
      'name',
      this,
    );
    image = _i1.ColumnString(
      'image',
      this,
    );
    division = _i1.ColumnString(
      'division',
      this,
    );
    state = _i1.ColumnString(
      'state',
      this,
    );
    country = _i1.ColumnString(
      'country',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final CityUpdateTable updateTable;

  late final _i1.ColumnString name;

  late final _i1.ColumnString image;

  late final _i1.ColumnString division;

  late final _i1.ColumnString state;

  late final _i1.ColumnString country;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    name,
    image,
    division,
    state,
    country,
    createdAt,
    updatedAt,
  ];
}

class CityInclude extends _i1.IncludeObject {
  CityInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => City.t;
}

class CityIncludeList extends _i1.IncludeList {
  CityIncludeList._({
    _i1.WhereExpressionBuilder<CityTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(City.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => City.t;
}

class CityRepository {
  const CityRepository._();

  /// Returns a list of [City]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<City>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CityTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CityTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CityTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<City>(
      where: where?.call(City.t),
      orderBy: orderBy?.call(City.t),
      orderByList: orderByList?.call(City.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [City] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<City?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CityTable>? where,
    int? offset,
    _i1.OrderByBuilder<CityTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CityTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<City>(
      where: where?.call(City.t),
      orderBy: orderBy?.call(City.t),
      orderByList: orderByList?.call(City.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [City] by its [id] or null if no such row exists.
  Future<City?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<City>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [City]s in the list and returns the inserted rows.
  ///
  /// The returned [City]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<City>> insert(
    _i1.Session session,
    List<City> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<City>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [City] and returns the inserted row.
  ///
  /// The returned [City] will have its `id` field set.
  Future<City> insertRow(
    _i1.Session session,
    City row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<City>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [City]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<City>> update(
    _i1.Session session,
    List<City> rows, {
    _i1.ColumnSelections<CityTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<City>(
      rows,
      columns: columns?.call(City.t),
      transaction: transaction,
    );
  }

  /// Updates a single [City]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<City> updateRow(
    _i1.Session session,
    City row, {
    _i1.ColumnSelections<CityTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<City>(
      row,
      columns: columns?.call(City.t),
      transaction: transaction,
    );
  }

  /// Updates a single [City] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<City?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<CityUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<City>(
      id,
      columnValues: columnValues(City.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [City]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<City>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<CityUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<CityTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CityTable>? orderBy,
    _i1.OrderByListBuilder<CityTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<City>(
      columnValues: columnValues(City.t.updateTable),
      where: where(City.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(City.t),
      orderByList: orderByList?.call(City.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [City]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<City>> delete(
    _i1.Session session,
    List<City> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<City>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [City].
  Future<City> deleteRow(
    _i1.Session session,
    City row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<City>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<City>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CityTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<City>(
      where: where(City.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CityTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<City>(
      where: where?.call(City.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
