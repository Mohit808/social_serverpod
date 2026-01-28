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

abstract class PostTag
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  PostTag._({
    this.id,
    required this.postId,
    required this.tagId,
  });

  factory PostTag({
    int? id,
    required int postId,
    required int tagId,
  }) = _PostTagImpl;

  factory PostTag.fromJson(Map<String, dynamic> jsonSerialization) {
    return PostTag(
      id: jsonSerialization['id'] as int?,
      postId: jsonSerialization['postId'] as int,
      tagId: jsonSerialization['tagId'] as int,
    );
  }

  static final t = PostTagTable();

  static const db = PostTagRepository._();

  @override
  int? id;

  int postId;

  int tagId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [PostTag]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PostTag copyWith({
    int? id,
    int? postId,
    int? tagId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PostTag',
      if (id != null) 'id': id,
      'postId': postId,
      'tagId': tagId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PostTag',
      if (id != null) 'id': id,
      'postId': postId,
      'tagId': tagId,
    };
  }

  static PostTagInclude include() {
    return PostTagInclude._();
  }

  static PostTagIncludeList includeList({
    _i1.WhereExpressionBuilder<PostTagTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostTagTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTagTable>? orderByList,
    PostTagInclude? include,
  }) {
    return PostTagIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PostTag.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PostTag.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PostTagImpl extends PostTag {
  _PostTagImpl({
    int? id,
    required int postId,
    required int tagId,
  }) : super._(
         id: id,
         postId: postId,
         tagId: tagId,
       );

  /// Returns a shallow copy of this [PostTag]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PostTag copyWith({
    Object? id = _Undefined,
    int? postId,
    int? tagId,
  }) {
    return PostTag(
      id: id is int? ? id : this.id,
      postId: postId ?? this.postId,
      tagId: tagId ?? this.tagId,
    );
  }
}

class PostTagUpdateTable extends _i1.UpdateTable<PostTagTable> {
  PostTagUpdateTable(super.table);

  _i1.ColumnValue<int, int> postId(int value) => _i1.ColumnValue(
    table.postId,
    value,
  );

  _i1.ColumnValue<int, int> tagId(int value) => _i1.ColumnValue(
    table.tagId,
    value,
  );
}

class PostTagTable extends _i1.Table<int?> {
  PostTagTable({super.tableRelation}) : super(tableName: 'post_tags') {
    updateTable = PostTagUpdateTable(this);
    postId = _i1.ColumnInt(
      'postId',
      this,
    );
    tagId = _i1.ColumnInt(
      'tagId',
      this,
    );
  }

  late final PostTagUpdateTable updateTable;

  late final _i1.ColumnInt postId;

  late final _i1.ColumnInt tagId;

  @override
  List<_i1.Column> get columns => [
    id,
    postId,
    tagId,
  ];
}

class PostTagInclude extends _i1.IncludeObject {
  PostTagInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PostTag.t;
}

class PostTagIncludeList extends _i1.IncludeList {
  PostTagIncludeList._({
    _i1.WhereExpressionBuilder<PostTagTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PostTag.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PostTag.t;
}

class PostTagRepository {
  const PostTagRepository._();

  /// Returns a list of [PostTag]s matching the given query parameters.
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
  Future<List<PostTag>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTagTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostTagTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTagTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PostTag>(
      where: where?.call(PostTag.t),
      orderBy: orderBy?.call(PostTag.t),
      orderByList: orderByList?.call(PostTag.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PostTag] matching the given query parameters.
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
  Future<PostTag?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTagTable>? where,
    int? offset,
    _i1.OrderByBuilder<PostTagTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTagTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PostTag>(
      where: where?.call(PostTag.t),
      orderBy: orderBy?.call(PostTag.t),
      orderByList: orderByList?.call(PostTag.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PostTag] by its [id] or null if no such row exists.
  Future<PostTag?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PostTag>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PostTag]s in the list and returns the inserted rows.
  ///
  /// The returned [PostTag]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PostTag>> insert(
    _i1.Session session,
    List<PostTag> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PostTag>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PostTag] and returns the inserted row.
  ///
  /// The returned [PostTag] will have its `id` field set.
  Future<PostTag> insertRow(
    _i1.Session session,
    PostTag row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PostTag>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PostTag]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PostTag>> update(
    _i1.Session session,
    List<PostTag> rows, {
    _i1.ColumnSelections<PostTagTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PostTag>(
      rows,
      columns: columns?.call(PostTag.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PostTag]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PostTag> updateRow(
    _i1.Session session,
    PostTag row, {
    _i1.ColumnSelections<PostTagTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PostTag>(
      row,
      columns: columns?.call(PostTag.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PostTag] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PostTag?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PostTagUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<PostTag>(
      id,
      columnValues: columnValues(PostTag.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PostTag]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<PostTag>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PostTagUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PostTagTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostTagTable>? orderBy,
    _i1.OrderByListBuilder<PostTagTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<PostTag>(
      columnValues: columnValues(PostTag.t.updateTable),
      where: where(PostTag.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PostTag.t),
      orderByList: orderByList?.call(PostTag.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [PostTag]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PostTag>> delete(
    _i1.Session session,
    List<PostTag> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PostTag>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PostTag].
  Future<PostTag> deleteRow(
    _i1.Session session,
    PostTag row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PostTag>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PostTag>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PostTagTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PostTag>(
      where: where(PostTag.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTagTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PostTag>(
      where: where?.call(PostTag.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
