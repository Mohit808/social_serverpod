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

abstract class CommentReport
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  CommentReport._({
    this.id,
    required this.userId,
    required this.commentId,
    required this.reason,
    this.createdAt,
  });

  factory CommentReport({
    int? id,
    required int userId,
    required int commentId,
    required String reason,
    DateTime? createdAt,
  }) = _CommentReportImpl;

  factory CommentReport.fromJson(Map<String, dynamic> jsonSerialization) {
    return CommentReport(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      commentId: jsonSerialization['commentId'] as int,
      reason: jsonSerialization['reason'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = CommentReportTable();

  static const db = CommentReportRepository._();

  @override
  int? id;

  int userId;

  int commentId;

  String reason;

  DateTime? createdAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [CommentReport]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  CommentReport copyWith({
    int? id,
    int? userId,
    int? commentId,
    String? reason,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CommentReport',
      if (id != null) 'id': id,
      'userId': userId,
      'commentId': commentId,
      'reason': reason,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CommentReport',
      if (id != null) 'id': id,
      'userId': userId,
      'commentId': commentId,
      'reason': reason,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  static CommentReportInclude include() {
    return CommentReportInclude._();
  }

  static CommentReportIncludeList includeList({
    _i1.WhereExpressionBuilder<CommentReportTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CommentReportTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CommentReportTable>? orderByList,
    CommentReportInclude? include,
  }) {
    return CommentReportIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CommentReport.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(CommentReport.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CommentReportImpl extends CommentReport {
  _CommentReportImpl({
    int? id,
    required int userId,
    required int commentId,
    required String reason,
    DateTime? createdAt,
  }) : super._(
         id: id,
         userId: userId,
         commentId: commentId,
         reason: reason,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CommentReport]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  CommentReport copyWith({
    Object? id = _Undefined,
    int? userId,
    int? commentId,
    String? reason,
    Object? createdAt = _Undefined,
  }) {
    return CommentReport(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      commentId: commentId ?? this.commentId,
      reason: reason ?? this.reason,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}

class CommentReportUpdateTable extends _i1.UpdateTable<CommentReportTable> {
  CommentReportUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<int, int> commentId(int value) => _i1.ColumnValue(
    table.commentId,
    value,
  );

  _i1.ColumnValue<String, String> reason(String value) => _i1.ColumnValue(
    table.reason,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime? value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );
}

class CommentReportTable extends _i1.Table<int?> {
  CommentReportTable({super.tableRelation})
    : super(tableName: 'comment_reports') {
    updateTable = CommentReportUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    commentId = _i1.ColumnInt(
      'commentId',
      this,
    );
    reason = _i1.ColumnString(
      'reason',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final CommentReportUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt commentId;

  late final _i1.ColumnString reason;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    commentId,
    reason,
    createdAt,
  ];
}

class CommentReportInclude extends _i1.IncludeObject {
  CommentReportInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => CommentReport.t;
}

class CommentReportIncludeList extends _i1.IncludeList {
  CommentReportIncludeList._({
    _i1.WhereExpressionBuilder<CommentReportTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(CommentReport.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => CommentReport.t;
}

class CommentReportRepository {
  const CommentReportRepository._();

  /// Returns a list of [CommentReport]s matching the given query parameters.
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
  Future<List<CommentReport>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CommentReportTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CommentReportTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CommentReportTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<CommentReport>(
      where: where?.call(CommentReport.t),
      orderBy: orderBy?.call(CommentReport.t),
      orderByList: orderByList?.call(CommentReport.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [CommentReport] matching the given query parameters.
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
  Future<CommentReport?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CommentReportTable>? where,
    int? offset,
    _i1.OrderByBuilder<CommentReportTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CommentReportTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<CommentReport>(
      where: where?.call(CommentReport.t),
      orderBy: orderBy?.call(CommentReport.t),
      orderByList: orderByList?.call(CommentReport.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [CommentReport] by its [id] or null if no such row exists.
  Future<CommentReport?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<CommentReport>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [CommentReport]s in the list and returns the inserted rows.
  ///
  /// The returned [CommentReport]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<CommentReport>> insert(
    _i1.Session session,
    List<CommentReport> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<CommentReport>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [CommentReport] and returns the inserted row.
  ///
  /// The returned [CommentReport] will have its `id` field set.
  Future<CommentReport> insertRow(
    _i1.Session session,
    CommentReport row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<CommentReport>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [CommentReport]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<CommentReport>> update(
    _i1.Session session,
    List<CommentReport> rows, {
    _i1.ColumnSelections<CommentReportTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<CommentReport>(
      rows,
      columns: columns?.call(CommentReport.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CommentReport]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<CommentReport> updateRow(
    _i1.Session session,
    CommentReport row, {
    _i1.ColumnSelections<CommentReportTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<CommentReport>(
      row,
      columns: columns?.call(CommentReport.t),
      transaction: transaction,
    );
  }

  /// Updates a single [CommentReport] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<CommentReport?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<CommentReportUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<CommentReport>(
      id,
      columnValues: columnValues(CommentReport.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [CommentReport]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<CommentReport>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<CommentReportUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<CommentReportTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CommentReportTable>? orderBy,
    _i1.OrderByListBuilder<CommentReportTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<CommentReport>(
      columnValues: columnValues(CommentReport.t.updateTable),
      where: where(CommentReport.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(CommentReport.t),
      orderByList: orderByList?.call(CommentReport.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [CommentReport]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<CommentReport>> delete(
    _i1.Session session,
    List<CommentReport> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<CommentReport>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [CommentReport].
  Future<CommentReport> deleteRow(
    _i1.Session session,
    CommentReport row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<CommentReport>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<CommentReport>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CommentReportTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<CommentReport>(
      where: where(CommentReport.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CommentReportTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<CommentReport>(
      where: where?.call(CommentReport.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
