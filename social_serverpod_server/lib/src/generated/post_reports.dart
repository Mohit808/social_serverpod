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

abstract class PostReport
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  PostReport._({
    this.id,
    required this.userId,
    required this.postId,
    required this.reason,
    this.createdAt,
  });

  factory PostReport({
    int? id,
    required int userId,
    required int postId,
    required String reason,
    DateTime? createdAt,
  }) = _PostReportImpl;

  factory PostReport.fromJson(Map<String, dynamic> jsonSerialization) {
    return PostReport(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      postId: jsonSerialization['postId'] as int,
      reason: jsonSerialization['reason'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = PostReportTable();

  static const db = PostReportRepository._();

  @override
  int? id;

  int userId;

  int postId;

  String reason;

  DateTime? createdAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [PostReport]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PostReport copyWith({
    int? id,
    int? userId,
    int? postId,
    String? reason,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PostReport',
      if (id != null) 'id': id,
      'userId': userId,
      'postId': postId,
      'reason': reason,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PostReport',
      if (id != null) 'id': id,
      'userId': userId,
      'postId': postId,
      'reason': reason,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  static PostReportInclude include() {
    return PostReportInclude._();
  }

  static PostReportIncludeList includeList({
    _i1.WhereExpressionBuilder<PostReportTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostReportTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostReportTable>? orderByList,
    PostReportInclude? include,
  }) {
    return PostReportIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PostReport.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PostReport.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PostReportImpl extends PostReport {
  _PostReportImpl({
    int? id,
    required int userId,
    required int postId,
    required String reason,
    DateTime? createdAt,
  }) : super._(
         id: id,
         userId: userId,
         postId: postId,
         reason: reason,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [PostReport]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PostReport copyWith({
    Object? id = _Undefined,
    int? userId,
    int? postId,
    String? reason,
    Object? createdAt = _Undefined,
  }) {
    return PostReport(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      postId: postId ?? this.postId,
      reason: reason ?? this.reason,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}

class PostReportUpdateTable extends _i1.UpdateTable<PostReportTable> {
  PostReportUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<int, int> postId(int value) => _i1.ColumnValue(
    table.postId,
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

class PostReportTable extends _i1.Table<int?> {
  PostReportTable({super.tableRelation}) : super(tableName: 'post_reports') {
    updateTable = PostReportUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    postId = _i1.ColumnInt(
      'postId',
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

  late final PostReportUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt postId;

  late final _i1.ColumnString reason;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    postId,
    reason,
    createdAt,
  ];
}

class PostReportInclude extends _i1.IncludeObject {
  PostReportInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PostReport.t;
}

class PostReportIncludeList extends _i1.IncludeList {
  PostReportIncludeList._({
    _i1.WhereExpressionBuilder<PostReportTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PostReport.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PostReport.t;
}

class PostReportRepository {
  const PostReportRepository._();

  /// Returns a list of [PostReport]s matching the given query parameters.
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
  Future<List<PostReport>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostReportTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostReportTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostReportTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PostReport>(
      where: where?.call(PostReport.t),
      orderBy: orderBy?.call(PostReport.t),
      orderByList: orderByList?.call(PostReport.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PostReport] matching the given query parameters.
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
  Future<PostReport?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostReportTable>? where,
    int? offset,
    _i1.OrderByBuilder<PostReportTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostReportTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PostReport>(
      where: where?.call(PostReport.t),
      orderBy: orderBy?.call(PostReport.t),
      orderByList: orderByList?.call(PostReport.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PostReport] by its [id] or null if no such row exists.
  Future<PostReport?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PostReport>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PostReport]s in the list and returns the inserted rows.
  ///
  /// The returned [PostReport]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PostReport>> insert(
    _i1.Session session,
    List<PostReport> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PostReport>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PostReport] and returns the inserted row.
  ///
  /// The returned [PostReport] will have its `id` field set.
  Future<PostReport> insertRow(
    _i1.Session session,
    PostReport row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PostReport>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PostReport]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PostReport>> update(
    _i1.Session session,
    List<PostReport> rows, {
    _i1.ColumnSelections<PostReportTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PostReport>(
      rows,
      columns: columns?.call(PostReport.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PostReport]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PostReport> updateRow(
    _i1.Session session,
    PostReport row, {
    _i1.ColumnSelections<PostReportTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PostReport>(
      row,
      columns: columns?.call(PostReport.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PostReport] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PostReport?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PostReportUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<PostReport>(
      id,
      columnValues: columnValues(PostReport.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PostReport]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<PostReport>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PostReportUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PostReportTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostReportTable>? orderBy,
    _i1.OrderByListBuilder<PostReportTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<PostReport>(
      columnValues: columnValues(PostReport.t.updateTable),
      where: where(PostReport.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PostReport.t),
      orderByList: orderByList?.call(PostReport.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [PostReport]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PostReport>> delete(
    _i1.Session session,
    List<PostReport> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PostReport>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PostReport].
  Future<PostReport> deleteRow(
    _i1.Session session,
    PostReport row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PostReport>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PostReport>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PostReportTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PostReport>(
      where: where(PostReport.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostReportTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PostReport>(
      where: where?.call(PostReport.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
