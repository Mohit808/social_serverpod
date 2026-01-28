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

abstract class ReplyComment
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  ReplyComment._({
    this.id,
    this.userId,
    this.commentId,
    required this.text,
    this.createdAt,
  });

  factory ReplyComment({
    int? id,
    int? userId,
    int? commentId,
    required String text,
    DateTime? createdAt,
  }) = _ReplyCommentImpl;

  factory ReplyComment.fromJson(Map<String, dynamic> jsonSerialization) {
    return ReplyComment(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      commentId: jsonSerialization['commentId'] as int?,
      text: jsonSerialization['text'] as String,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = ReplyCommentTable();

  static const db = ReplyCommentRepository._();

  @override
  int? id;

  int? userId;

  int? commentId;

  String text;

  DateTime? createdAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [ReplyComment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ReplyComment copyWith({
    int? id,
    int? userId,
    int? commentId,
    String? text,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ReplyComment',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (commentId != null) 'commentId': commentId,
      'text': text,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ReplyComment',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (commentId != null) 'commentId': commentId,
      'text': text,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  static ReplyCommentInclude include() {
    return ReplyCommentInclude._();
  }

  static ReplyCommentIncludeList includeList({
    _i1.WhereExpressionBuilder<ReplyCommentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReplyCommentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReplyCommentTable>? orderByList,
    ReplyCommentInclude? include,
  }) {
    return ReplyCommentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ReplyComment.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ReplyComment.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ReplyCommentImpl extends ReplyComment {
  _ReplyCommentImpl({
    int? id,
    int? userId,
    int? commentId,
    required String text,
    DateTime? createdAt,
  }) : super._(
         id: id,
         userId: userId,
         commentId: commentId,
         text: text,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [ReplyComment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ReplyComment copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    Object? commentId = _Undefined,
    String? text,
    Object? createdAt = _Undefined,
  }) {
    return ReplyComment(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      commentId: commentId is int? ? commentId : this.commentId,
      text: text ?? this.text,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}

class ReplyCommentUpdateTable extends _i1.UpdateTable<ReplyCommentTable> {
  ReplyCommentUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int? value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<int, int> commentId(int? value) => _i1.ColumnValue(
    table.commentId,
    value,
  );

  _i1.ColumnValue<String, String> text(String value) => _i1.ColumnValue(
    table.text,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime? value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );
}

class ReplyCommentTable extends _i1.Table<int?> {
  ReplyCommentTable({super.tableRelation})
    : super(tableName: 'reply_comments') {
    updateTable = ReplyCommentUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    commentId = _i1.ColumnInt(
      'commentId',
      this,
    );
    text = _i1.ColumnString(
      'text',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final ReplyCommentUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt commentId;

  late final _i1.ColumnString text;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    commentId,
    text,
    createdAt,
  ];
}

class ReplyCommentInclude extends _i1.IncludeObject {
  ReplyCommentInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => ReplyComment.t;
}

class ReplyCommentIncludeList extends _i1.IncludeList {
  ReplyCommentIncludeList._({
    _i1.WhereExpressionBuilder<ReplyCommentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ReplyComment.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => ReplyComment.t;
}

class ReplyCommentRepository {
  const ReplyCommentRepository._();

  /// Returns a list of [ReplyComment]s matching the given query parameters.
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
  Future<List<ReplyComment>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReplyCommentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReplyCommentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReplyCommentTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ReplyComment>(
      where: where?.call(ReplyComment.t),
      orderBy: orderBy?.call(ReplyComment.t),
      orderByList: orderByList?.call(ReplyComment.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [ReplyComment] matching the given query parameters.
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
  Future<ReplyComment?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReplyCommentTable>? where,
    int? offset,
    _i1.OrderByBuilder<ReplyCommentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ReplyCommentTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<ReplyComment>(
      where: where?.call(ReplyComment.t),
      orderBy: orderBy?.call(ReplyComment.t),
      orderByList: orderByList?.call(ReplyComment.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [ReplyComment] by its [id] or null if no such row exists.
  Future<ReplyComment?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<ReplyComment>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [ReplyComment]s in the list and returns the inserted rows.
  ///
  /// The returned [ReplyComment]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<ReplyComment>> insert(
    _i1.Session session,
    List<ReplyComment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<ReplyComment>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [ReplyComment] and returns the inserted row.
  ///
  /// The returned [ReplyComment] will have its `id` field set.
  Future<ReplyComment> insertRow(
    _i1.Session session,
    ReplyComment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ReplyComment>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ReplyComment]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ReplyComment>> update(
    _i1.Session session,
    List<ReplyComment> rows, {
    _i1.ColumnSelections<ReplyCommentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ReplyComment>(
      rows,
      columns: columns?.call(ReplyComment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ReplyComment]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ReplyComment> updateRow(
    _i1.Session session,
    ReplyComment row, {
    _i1.ColumnSelections<ReplyCommentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ReplyComment>(
      row,
      columns: columns?.call(ReplyComment.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ReplyComment] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ReplyComment?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<ReplyCommentUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<ReplyComment>(
      id,
      columnValues: columnValues(ReplyComment.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ReplyComment]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<ReplyComment>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<ReplyCommentUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ReplyCommentTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ReplyCommentTable>? orderBy,
    _i1.OrderByListBuilder<ReplyCommentTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<ReplyComment>(
      columnValues: columnValues(ReplyComment.t.updateTable),
      where: where(ReplyComment.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ReplyComment.t),
      orderByList: orderByList?.call(ReplyComment.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [ReplyComment]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ReplyComment>> delete(
    _i1.Session session,
    List<ReplyComment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ReplyComment>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ReplyComment].
  Future<ReplyComment> deleteRow(
    _i1.Session session,
    ReplyComment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ReplyComment>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ReplyComment>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ReplyCommentTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ReplyComment>(
      where: where(ReplyComment.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ReplyCommentTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ReplyComment>(
      where: where?.call(ReplyComment.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
