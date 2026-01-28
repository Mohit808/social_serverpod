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

abstract class PostViewCount
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  PostViewCount._({
    this.id,
    required this.postId,
    this.userId,
    this.ipAddress,
    this.viewedAt,
  });

  factory PostViewCount({
    int? id,
    required int postId,
    int? userId,
    String? ipAddress,
    DateTime? viewedAt,
  }) = _PostViewCountImpl;

  factory PostViewCount.fromJson(Map<String, dynamic> jsonSerialization) {
    return PostViewCount(
      id: jsonSerialization['id'] as int?,
      postId: jsonSerialization['postId'] as int,
      userId: jsonSerialization['userId'] as int?,
      ipAddress: jsonSerialization['ipAddress'] as String?,
      viewedAt: jsonSerialization['viewedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['viewedAt']),
    );
  }

  static final t = PostViewCountTable();

  static const db = PostViewCountRepository._();

  @override
  int? id;

  int postId;

  int? userId;

  String? ipAddress;

  DateTime? viewedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [PostViewCount]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PostViewCount copyWith({
    int? id,
    int? postId,
    int? userId,
    String? ipAddress,
    DateTime? viewedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PostViewCount',
      if (id != null) 'id': id,
      'postId': postId,
      if (userId != null) 'userId': userId,
      if (ipAddress != null) 'ipAddress': ipAddress,
      if (viewedAt != null) 'viewedAt': viewedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PostViewCount',
      if (id != null) 'id': id,
      'postId': postId,
      if (userId != null) 'userId': userId,
      if (ipAddress != null) 'ipAddress': ipAddress,
      if (viewedAt != null) 'viewedAt': viewedAt?.toJson(),
    };
  }

  static PostViewCountInclude include() {
    return PostViewCountInclude._();
  }

  static PostViewCountIncludeList includeList({
    _i1.WhereExpressionBuilder<PostViewCountTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostViewCountTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostViewCountTable>? orderByList,
    PostViewCountInclude? include,
  }) {
    return PostViewCountIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PostViewCount.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PostViewCount.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PostViewCountImpl extends PostViewCount {
  _PostViewCountImpl({
    int? id,
    required int postId,
    int? userId,
    String? ipAddress,
    DateTime? viewedAt,
  }) : super._(
         id: id,
         postId: postId,
         userId: userId,
         ipAddress: ipAddress,
         viewedAt: viewedAt,
       );

  /// Returns a shallow copy of this [PostViewCount]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PostViewCount copyWith({
    Object? id = _Undefined,
    int? postId,
    Object? userId = _Undefined,
    Object? ipAddress = _Undefined,
    Object? viewedAt = _Undefined,
  }) {
    return PostViewCount(
      id: id is int? ? id : this.id,
      postId: postId ?? this.postId,
      userId: userId is int? ? userId : this.userId,
      ipAddress: ipAddress is String? ? ipAddress : this.ipAddress,
      viewedAt: viewedAt is DateTime? ? viewedAt : this.viewedAt,
    );
  }
}

class PostViewCountUpdateTable extends _i1.UpdateTable<PostViewCountTable> {
  PostViewCountUpdateTable(super.table);

  _i1.ColumnValue<int, int> postId(int value) => _i1.ColumnValue(
    table.postId,
    value,
  );

  _i1.ColumnValue<int, int> userId(int? value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<String, String> ipAddress(String? value) => _i1.ColumnValue(
    table.ipAddress,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> viewedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.viewedAt,
        value,
      );
}

class PostViewCountTable extends _i1.Table<int?> {
  PostViewCountTable({super.tableRelation})
    : super(tableName: 'post_view_counts') {
    updateTable = PostViewCountUpdateTable(this);
    postId = _i1.ColumnInt(
      'postId',
      this,
    );
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    ipAddress = _i1.ColumnString(
      'ipAddress',
      this,
    );
    viewedAt = _i1.ColumnDateTime(
      'viewedAt',
      this,
    );
  }

  late final PostViewCountUpdateTable updateTable;

  late final _i1.ColumnInt postId;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString ipAddress;

  late final _i1.ColumnDateTime viewedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    postId,
    userId,
    ipAddress,
    viewedAt,
  ];
}

class PostViewCountInclude extends _i1.IncludeObject {
  PostViewCountInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PostViewCount.t;
}

class PostViewCountIncludeList extends _i1.IncludeList {
  PostViewCountIncludeList._({
    _i1.WhereExpressionBuilder<PostViewCountTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PostViewCount.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PostViewCount.t;
}

class PostViewCountRepository {
  const PostViewCountRepository._();

  /// Returns a list of [PostViewCount]s matching the given query parameters.
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
  Future<List<PostViewCount>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostViewCountTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostViewCountTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostViewCountTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PostViewCount>(
      where: where?.call(PostViewCount.t),
      orderBy: orderBy?.call(PostViewCount.t),
      orderByList: orderByList?.call(PostViewCount.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PostViewCount] matching the given query parameters.
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
  Future<PostViewCount?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostViewCountTable>? where,
    int? offset,
    _i1.OrderByBuilder<PostViewCountTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostViewCountTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PostViewCount>(
      where: where?.call(PostViewCount.t),
      orderBy: orderBy?.call(PostViewCount.t),
      orderByList: orderByList?.call(PostViewCount.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PostViewCount] by its [id] or null if no such row exists.
  Future<PostViewCount?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PostViewCount>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PostViewCount]s in the list and returns the inserted rows.
  ///
  /// The returned [PostViewCount]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PostViewCount>> insert(
    _i1.Session session,
    List<PostViewCount> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PostViewCount>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PostViewCount] and returns the inserted row.
  ///
  /// The returned [PostViewCount] will have its `id` field set.
  Future<PostViewCount> insertRow(
    _i1.Session session,
    PostViewCount row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PostViewCount>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PostViewCount]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PostViewCount>> update(
    _i1.Session session,
    List<PostViewCount> rows, {
    _i1.ColumnSelections<PostViewCountTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PostViewCount>(
      rows,
      columns: columns?.call(PostViewCount.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PostViewCount]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PostViewCount> updateRow(
    _i1.Session session,
    PostViewCount row, {
    _i1.ColumnSelections<PostViewCountTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PostViewCount>(
      row,
      columns: columns?.call(PostViewCount.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PostViewCount] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PostViewCount?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PostViewCountUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<PostViewCount>(
      id,
      columnValues: columnValues(PostViewCount.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PostViewCount]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<PostViewCount>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PostViewCountUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PostViewCountTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostViewCountTable>? orderBy,
    _i1.OrderByListBuilder<PostViewCountTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<PostViewCount>(
      columnValues: columnValues(PostViewCount.t.updateTable),
      where: where(PostViewCount.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PostViewCount.t),
      orderByList: orderByList?.call(PostViewCount.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [PostViewCount]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PostViewCount>> delete(
    _i1.Session session,
    List<PostViewCount> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PostViewCount>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PostViewCount].
  Future<PostViewCount> deleteRow(
    _i1.Session session,
    PostViewCount row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PostViewCount>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PostViewCount>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PostViewCountTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PostViewCount>(
      where: where(PostViewCount.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostViewCountTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PostViewCount>(
      where: where?.call(PostViewCount.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
