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

abstract class StoryViewCount
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  StoryViewCount._({
    this.id,
    required this.storyId,
    required this.viewerId,
    this.viewedAt,
  });

  factory StoryViewCount({
    int? id,
    required int storyId,
    required int viewerId,
    DateTime? viewedAt,
  }) = _StoryViewCountImpl;

  factory StoryViewCount.fromJson(Map<String, dynamic> jsonSerialization) {
    return StoryViewCount(
      id: jsonSerialization['id'] as int?,
      storyId: jsonSerialization['storyId'] as int,
      viewerId: jsonSerialization['viewerId'] as int,
      viewedAt: jsonSerialization['viewedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['viewedAt']),
    );
  }

  static final t = StoryViewCountTable();

  static const db = StoryViewCountRepository._();

  @override
  int? id;

  int storyId;

  int viewerId;

  DateTime? viewedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [StoryViewCount]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  StoryViewCount copyWith({
    int? id,
    int? storyId,
    int? viewerId,
    DateTime? viewedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'StoryViewCount',
      if (id != null) 'id': id,
      'storyId': storyId,
      'viewerId': viewerId,
      if (viewedAt != null) 'viewedAt': viewedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'StoryViewCount',
      if (id != null) 'id': id,
      'storyId': storyId,
      'viewerId': viewerId,
      if (viewedAt != null) 'viewedAt': viewedAt?.toJson(),
    };
  }

  static StoryViewCountInclude include() {
    return StoryViewCountInclude._();
  }

  static StoryViewCountIncludeList includeList({
    _i1.WhereExpressionBuilder<StoryViewCountTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoryViewCountTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoryViewCountTable>? orderByList,
    StoryViewCountInclude? include,
  }) {
    return StoryViewCountIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoryViewCount.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(StoryViewCount.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _StoryViewCountImpl extends StoryViewCount {
  _StoryViewCountImpl({
    int? id,
    required int storyId,
    required int viewerId,
    DateTime? viewedAt,
  }) : super._(
         id: id,
         storyId: storyId,
         viewerId: viewerId,
         viewedAt: viewedAt,
       );

  /// Returns a shallow copy of this [StoryViewCount]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  StoryViewCount copyWith({
    Object? id = _Undefined,
    int? storyId,
    int? viewerId,
    Object? viewedAt = _Undefined,
  }) {
    return StoryViewCount(
      id: id is int? ? id : this.id,
      storyId: storyId ?? this.storyId,
      viewerId: viewerId ?? this.viewerId,
      viewedAt: viewedAt is DateTime? ? viewedAt : this.viewedAt,
    );
  }
}

class StoryViewCountUpdateTable extends _i1.UpdateTable<StoryViewCountTable> {
  StoryViewCountUpdateTable(super.table);

  _i1.ColumnValue<int, int> storyId(int value) => _i1.ColumnValue(
    table.storyId,
    value,
  );

  _i1.ColumnValue<int, int> viewerId(int value) => _i1.ColumnValue(
    table.viewerId,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> viewedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.viewedAt,
        value,
      );
}

class StoryViewCountTable extends _i1.Table<int?> {
  StoryViewCountTable({super.tableRelation})
    : super(tableName: 'story_view_counts') {
    updateTable = StoryViewCountUpdateTable(this);
    storyId = _i1.ColumnInt(
      'storyId',
      this,
    );
    viewerId = _i1.ColumnInt(
      'viewerId',
      this,
    );
    viewedAt = _i1.ColumnDateTime(
      'viewedAt',
      this,
    );
  }

  late final StoryViewCountUpdateTable updateTable;

  late final _i1.ColumnInt storyId;

  late final _i1.ColumnInt viewerId;

  late final _i1.ColumnDateTime viewedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    storyId,
    viewerId,
    viewedAt,
  ];
}

class StoryViewCountInclude extends _i1.IncludeObject {
  StoryViewCountInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => StoryViewCount.t;
}

class StoryViewCountIncludeList extends _i1.IncludeList {
  StoryViewCountIncludeList._({
    _i1.WhereExpressionBuilder<StoryViewCountTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(StoryViewCount.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => StoryViewCount.t;
}

class StoryViewCountRepository {
  const StoryViewCountRepository._();

  /// Returns a list of [StoryViewCount]s matching the given query parameters.
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
  Future<List<StoryViewCount>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StoryViewCountTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoryViewCountTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoryViewCountTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<StoryViewCount>(
      where: where?.call(StoryViewCount.t),
      orderBy: orderBy?.call(StoryViewCount.t),
      orderByList: orderByList?.call(StoryViewCount.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [StoryViewCount] matching the given query parameters.
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
  Future<StoryViewCount?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StoryViewCountTable>? where,
    int? offset,
    _i1.OrderByBuilder<StoryViewCountTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<StoryViewCountTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<StoryViewCount>(
      where: where?.call(StoryViewCount.t),
      orderBy: orderBy?.call(StoryViewCount.t),
      orderByList: orderByList?.call(StoryViewCount.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [StoryViewCount] by its [id] or null if no such row exists.
  Future<StoryViewCount?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<StoryViewCount>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [StoryViewCount]s in the list and returns the inserted rows.
  ///
  /// The returned [StoryViewCount]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<StoryViewCount>> insert(
    _i1.Session session,
    List<StoryViewCount> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<StoryViewCount>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [StoryViewCount] and returns the inserted row.
  ///
  /// The returned [StoryViewCount] will have its `id` field set.
  Future<StoryViewCount> insertRow(
    _i1.Session session,
    StoryViewCount row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<StoryViewCount>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [StoryViewCount]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<StoryViewCount>> update(
    _i1.Session session,
    List<StoryViewCount> rows, {
    _i1.ColumnSelections<StoryViewCountTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<StoryViewCount>(
      rows,
      columns: columns?.call(StoryViewCount.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoryViewCount]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<StoryViewCount> updateRow(
    _i1.Session session,
    StoryViewCount row, {
    _i1.ColumnSelections<StoryViewCountTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<StoryViewCount>(
      row,
      columns: columns?.call(StoryViewCount.t),
      transaction: transaction,
    );
  }

  /// Updates a single [StoryViewCount] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<StoryViewCount?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<StoryViewCountUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<StoryViewCount>(
      id,
      columnValues: columnValues(StoryViewCount.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [StoryViewCount]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<StoryViewCount>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<StoryViewCountUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<StoryViewCountTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<StoryViewCountTable>? orderBy,
    _i1.OrderByListBuilder<StoryViewCountTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<StoryViewCount>(
      columnValues: columnValues(StoryViewCount.t.updateTable),
      where: where(StoryViewCount.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(StoryViewCount.t),
      orderByList: orderByList?.call(StoryViewCount.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [StoryViewCount]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<StoryViewCount>> delete(
    _i1.Session session,
    List<StoryViewCount> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<StoryViewCount>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [StoryViewCount].
  Future<StoryViewCount> deleteRow(
    _i1.Session session,
    StoryViewCount row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<StoryViewCount>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<StoryViewCount>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<StoryViewCountTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<StoryViewCount>(
      where: where(StoryViewCount.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<StoryViewCountTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<StoryViewCount>(
      where: where?.call(StoryViewCount.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
