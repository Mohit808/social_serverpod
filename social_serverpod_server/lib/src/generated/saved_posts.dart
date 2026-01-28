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

abstract class SavedPost
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  SavedPost._({
    this.id,
    required this.userId,
    required this.postId,
    this.savedAt,
  });

  factory SavedPost({
    int? id,
    required int userId,
    required int postId,
    DateTime? savedAt,
  }) = _SavedPostImpl;

  factory SavedPost.fromJson(Map<String, dynamic> jsonSerialization) {
    return SavedPost(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      postId: jsonSerialization['postId'] as int,
      savedAt: jsonSerialization['savedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['savedAt']),
    );
  }

  static final t = SavedPostTable();

  static const db = SavedPostRepository._();

  @override
  int? id;

  int userId;

  int postId;

  DateTime? savedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [SavedPost]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  SavedPost copyWith({
    int? id,
    int? userId,
    int? postId,
    DateTime? savedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SavedPost',
      if (id != null) 'id': id,
      'userId': userId,
      'postId': postId,
      if (savedAt != null) 'savedAt': savedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SavedPost',
      if (id != null) 'id': id,
      'userId': userId,
      'postId': postId,
      if (savedAt != null) 'savedAt': savedAt?.toJson(),
    };
  }

  static SavedPostInclude include() {
    return SavedPostInclude._();
  }

  static SavedPostIncludeList includeList({
    _i1.WhereExpressionBuilder<SavedPostTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SavedPostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SavedPostTable>? orderByList,
    SavedPostInclude? include,
  }) {
    return SavedPostIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SavedPost.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(SavedPost.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SavedPostImpl extends SavedPost {
  _SavedPostImpl({
    int? id,
    required int userId,
    required int postId,
    DateTime? savedAt,
  }) : super._(
         id: id,
         userId: userId,
         postId: postId,
         savedAt: savedAt,
       );

  /// Returns a shallow copy of this [SavedPost]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  SavedPost copyWith({
    Object? id = _Undefined,
    int? userId,
    int? postId,
    Object? savedAt = _Undefined,
  }) {
    return SavedPost(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      postId: postId ?? this.postId,
      savedAt: savedAt is DateTime? ? savedAt : this.savedAt,
    );
  }
}

class SavedPostUpdateTable extends _i1.UpdateTable<SavedPostTable> {
  SavedPostUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<int, int> postId(int value) => _i1.ColumnValue(
    table.postId,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> savedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.savedAt,
        value,
      );
}

class SavedPostTable extends _i1.Table<int?> {
  SavedPostTable({super.tableRelation}) : super(tableName: 'saved_posts') {
    updateTable = SavedPostUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    postId = _i1.ColumnInt(
      'postId',
      this,
    );
    savedAt = _i1.ColumnDateTime(
      'savedAt',
      this,
    );
  }

  late final SavedPostUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt postId;

  late final _i1.ColumnDateTime savedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    postId,
    savedAt,
  ];
}

class SavedPostInclude extends _i1.IncludeObject {
  SavedPostInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => SavedPost.t;
}

class SavedPostIncludeList extends _i1.IncludeList {
  SavedPostIncludeList._({
    _i1.WhereExpressionBuilder<SavedPostTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(SavedPost.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => SavedPost.t;
}

class SavedPostRepository {
  const SavedPostRepository._();

  /// Returns a list of [SavedPost]s matching the given query parameters.
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
  Future<List<SavedPost>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SavedPostTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SavedPostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SavedPostTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<SavedPost>(
      where: where?.call(SavedPost.t),
      orderBy: orderBy?.call(SavedPost.t),
      orderByList: orderByList?.call(SavedPost.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [SavedPost] matching the given query parameters.
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
  Future<SavedPost?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SavedPostTable>? where,
    int? offset,
    _i1.OrderByBuilder<SavedPostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<SavedPostTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<SavedPost>(
      where: where?.call(SavedPost.t),
      orderBy: orderBy?.call(SavedPost.t),
      orderByList: orderByList?.call(SavedPost.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [SavedPost] by its [id] or null if no such row exists.
  Future<SavedPost?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<SavedPost>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [SavedPost]s in the list and returns the inserted rows.
  ///
  /// The returned [SavedPost]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<SavedPost>> insert(
    _i1.Session session,
    List<SavedPost> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<SavedPost>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [SavedPost] and returns the inserted row.
  ///
  /// The returned [SavedPost] will have its `id` field set.
  Future<SavedPost> insertRow(
    _i1.Session session,
    SavedPost row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<SavedPost>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [SavedPost]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<SavedPost>> update(
    _i1.Session session,
    List<SavedPost> rows, {
    _i1.ColumnSelections<SavedPostTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<SavedPost>(
      rows,
      columns: columns?.call(SavedPost.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SavedPost]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<SavedPost> updateRow(
    _i1.Session session,
    SavedPost row, {
    _i1.ColumnSelections<SavedPostTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<SavedPost>(
      row,
      columns: columns?.call(SavedPost.t),
      transaction: transaction,
    );
  }

  /// Updates a single [SavedPost] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<SavedPost?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<SavedPostUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<SavedPost>(
      id,
      columnValues: columnValues(SavedPost.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [SavedPost]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<SavedPost>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<SavedPostUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<SavedPostTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<SavedPostTable>? orderBy,
    _i1.OrderByListBuilder<SavedPostTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<SavedPost>(
      columnValues: columnValues(SavedPost.t.updateTable),
      where: where(SavedPost.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(SavedPost.t),
      orderByList: orderByList?.call(SavedPost.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [SavedPost]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<SavedPost>> delete(
    _i1.Session session,
    List<SavedPost> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<SavedPost>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [SavedPost].
  Future<SavedPost> deleteRow(
    _i1.Session session,
    SavedPost row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<SavedPost>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<SavedPost>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<SavedPostTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<SavedPost>(
      where: where(SavedPost.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<SavedPostTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<SavedPost>(
      where: where?.call(SavedPost.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
