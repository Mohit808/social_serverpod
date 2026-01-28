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

abstract class Like implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Like._({
    this.id,
    this.userId,
    required this.postId,
  });

  factory Like({
    int? id,
    int? userId,
    required int postId,
  }) = _LikeImpl;

  factory Like.fromJson(Map<String, dynamic> jsonSerialization) {
    return Like(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      postId: jsonSerialization['postId'] as int,
    );
  }

  static final t = LikeTable();

  static const db = LikeRepository._();

  @override
  int? id;

  int? userId;

  int postId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Like]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Like copyWith({
    int? id,
    int? userId,
    int? postId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Like',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      'postId': postId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Like',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      'postId': postId,
    };
  }

  static LikeInclude include() {
    return LikeInclude._();
  }

  static LikeIncludeList includeList({
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LikeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LikeTable>? orderByList,
    LikeInclude? include,
  }) {
    return LikeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Like.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Like.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LikeImpl extends Like {
  _LikeImpl({
    int? id,
    int? userId,
    required int postId,
  }) : super._(
         id: id,
         userId: userId,
         postId: postId,
       );

  /// Returns a shallow copy of this [Like]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Like copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    int? postId,
  }) {
    return Like(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      postId: postId ?? this.postId,
    );
  }
}

class LikeUpdateTable extends _i1.UpdateTable<LikeTable> {
  LikeUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int? value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<int, int> postId(int value) => _i1.ColumnValue(
    table.postId,
    value,
  );
}

class LikeTable extends _i1.Table<int?> {
  LikeTable({super.tableRelation}) : super(tableName: 'likes') {
    updateTable = LikeUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    postId = _i1.ColumnInt(
      'postId',
      this,
    );
  }

  late final LikeUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt postId;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    postId,
  ];
}

class LikeInclude extends _i1.IncludeObject {
  LikeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Like.t;
}

class LikeIncludeList extends _i1.IncludeList {
  LikeIncludeList._({
    _i1.WhereExpressionBuilder<LikeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Like.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Like.t;
}

class LikeRepository {
  const LikeRepository._();

  /// Returns a list of [Like]s matching the given query parameters.
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
  Future<List<Like>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LikeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LikeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Like>(
      where: where?.call(Like.t),
      orderBy: orderBy?.call(Like.t),
      orderByList: orderByList?.call(Like.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Like] matching the given query parameters.
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
  Future<Like?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? offset,
    _i1.OrderByBuilder<LikeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LikeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Like>(
      where: where?.call(Like.t),
      orderBy: orderBy?.call(Like.t),
      orderByList: orderByList?.call(Like.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Like] by its [id] or null if no such row exists.
  Future<Like?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Like>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Like]s in the list and returns the inserted rows.
  ///
  /// The returned [Like]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Like>> insert(
    _i1.Session session,
    List<Like> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Like>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Like] and returns the inserted row.
  ///
  /// The returned [Like] will have its `id` field set.
  Future<Like> insertRow(
    _i1.Session session,
    Like row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Like>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Like]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Like>> update(
    _i1.Session session,
    List<Like> rows, {
    _i1.ColumnSelections<LikeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Like>(
      rows,
      columns: columns?.call(Like.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Like]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Like> updateRow(
    _i1.Session session,
    Like row, {
    _i1.ColumnSelections<LikeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Like>(
      row,
      columns: columns?.call(Like.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Like] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Like?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<LikeUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Like>(
      id,
      columnValues: columnValues(Like.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Like]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Like>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<LikeUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<LikeTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LikeTable>? orderBy,
    _i1.OrderByListBuilder<LikeTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Like>(
      columnValues: columnValues(Like.t.updateTable),
      where: where(Like.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Like.t),
      orderByList: orderByList?.call(Like.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Like]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Like>> delete(
    _i1.Session session,
    List<Like> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Like>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Like].
  Future<Like> deleteRow(
    _i1.Session session,
    Like row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Like>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Like>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LikeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Like>(
      where: where(Like.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Like>(
      where: where?.call(Like.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
