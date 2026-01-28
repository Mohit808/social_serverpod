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

abstract class LikeComment
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  LikeComment._({
    this.id,
    this.userId,
    this.commentId,
    this.createdAt,
  });

  factory LikeComment({
    int? id,
    int? userId,
    int? commentId,
    DateTime? createdAt,
  }) = _LikeCommentImpl;

  factory LikeComment.fromJson(Map<String, dynamic> jsonSerialization) {
    return LikeComment(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      commentId: jsonSerialization['commentId'] as int?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = LikeCommentTable();

  static const db = LikeCommentRepository._();

  @override
  int? id;

  int? userId;

  int? commentId;

  DateTime? createdAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [LikeComment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  LikeComment copyWith({
    int? id,
    int? userId,
    int? commentId,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'LikeComment',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (commentId != null) 'commentId': commentId,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'LikeComment',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (commentId != null) 'commentId': commentId,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  static LikeCommentInclude include() {
    return LikeCommentInclude._();
  }

  static LikeCommentIncludeList includeList({
    _i1.WhereExpressionBuilder<LikeCommentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LikeCommentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LikeCommentTable>? orderByList,
    LikeCommentInclude? include,
  }) {
    return LikeCommentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(LikeComment.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(LikeComment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _LikeCommentImpl extends LikeComment {
  _LikeCommentImpl({
    int? id,
    int? userId,
    int? commentId,
    DateTime? createdAt,
  }) : super._(
         id: id,
         userId: userId,
         commentId: commentId,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [LikeComment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  LikeComment copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    Object? commentId = _Undefined,
    Object? createdAt = _Undefined,
  }) {
    return LikeComment(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      commentId: commentId is int? ? commentId : this.commentId,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}

class LikeCommentUpdateTable extends _i1.UpdateTable<LikeCommentTable> {
  LikeCommentUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int? value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<int, int> commentId(int? value) => _i1.ColumnValue(
    table.commentId,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime? value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );
}

class LikeCommentTable extends _i1.Table<int?> {
  LikeCommentTable({super.tableRelation}) : super(tableName: 'like_comments') {
    updateTable = LikeCommentUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    commentId = _i1.ColumnInt(
      'commentId',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final LikeCommentUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt commentId;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    commentId,
    createdAt,
  ];
}

class LikeCommentInclude extends _i1.IncludeObject {
  LikeCommentInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => LikeComment.t;
}

class LikeCommentIncludeList extends _i1.IncludeList {
  LikeCommentIncludeList._({
    _i1.WhereExpressionBuilder<LikeCommentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(LikeComment.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => LikeComment.t;
}

class LikeCommentRepository {
  const LikeCommentRepository._();

  /// Returns a list of [LikeComment]s matching the given query parameters.
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
  Future<List<LikeComment>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeCommentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LikeCommentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LikeCommentTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<LikeComment>(
      where: where?.call(LikeComment.t),
      orderBy: orderBy?.call(LikeComment.t),
      orderByList: orderByList?.call(LikeComment.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [LikeComment] matching the given query parameters.
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
  Future<LikeComment?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeCommentTable>? where,
    int? offset,
    _i1.OrderByBuilder<LikeCommentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LikeCommentTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<LikeComment>(
      where: where?.call(LikeComment.t),
      orderBy: orderBy?.call(LikeComment.t),
      orderByList: orderByList?.call(LikeComment.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [LikeComment] by its [id] or null if no such row exists.
  Future<LikeComment?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<LikeComment>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [LikeComment]s in the list and returns the inserted rows.
  ///
  /// The returned [LikeComment]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<LikeComment>> insert(
    _i1.Session session,
    List<LikeComment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<LikeComment>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [LikeComment] and returns the inserted row.
  ///
  /// The returned [LikeComment] will have its `id` field set.
  Future<LikeComment> insertRow(
    _i1.Session session,
    LikeComment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<LikeComment>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [LikeComment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<LikeComment>> update(
    _i1.Session session,
    List<LikeComment> rows, {
    _i1.ColumnSelections<LikeCommentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<LikeComment>(
      rows,
      columns: columns?.call(LikeComment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [LikeComment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<LikeComment> updateRow(
    _i1.Session session,
    LikeComment row, {
    _i1.ColumnSelections<LikeCommentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<LikeComment>(
      row,
      columns: columns?.call(LikeComment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [LikeComment] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<LikeComment?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<LikeCommentUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<LikeComment>(
      id,
      columnValues: columnValues(LikeComment.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [LikeComment]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<LikeComment>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<LikeCommentUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<LikeCommentTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LikeCommentTable>? orderBy,
    _i1.OrderByListBuilder<LikeCommentTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<LikeComment>(
      columnValues: columnValues(LikeComment.t.updateTable),
      where: where(LikeComment.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(LikeComment.t),
      orderByList: orderByList?.call(LikeComment.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [LikeComment]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<LikeComment>> delete(
    _i1.Session session,
    List<LikeComment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<LikeComment>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [LikeComment].
  Future<LikeComment> deleteRow(
    _i1.Session session,
    LikeComment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<LikeComment>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<LikeComment>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LikeCommentTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<LikeComment>(
      where: where(LikeComment.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LikeCommentTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<LikeComment>(
      where: where?.call(LikeComment.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
