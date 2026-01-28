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

abstract class PostPeopleTagged
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  PostPeopleTagged._({
    this.id,
    required this.postId,
    required this.userProfileId,
  });

  factory PostPeopleTagged({
    int? id,
    required int postId,
    required int userProfileId,
  }) = _PostPeopleTaggedImpl;

  factory PostPeopleTagged.fromJson(Map<String, dynamic> jsonSerialization) {
    return PostPeopleTagged(
      id: jsonSerialization['id'] as int?,
      postId: jsonSerialization['postId'] as int,
      userProfileId: jsonSerialization['userProfileId'] as int,
    );
  }

  static final t = PostPeopleTaggedTable();

  static const db = PostPeopleTaggedRepository._();

  @override
  int? id;

  int postId;

  int userProfileId;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [PostPeopleTagged]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PostPeopleTagged copyWith({
    int? id,
    int? postId,
    int? userProfileId,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'PostPeopleTagged',
      if (id != null) 'id': id,
      'postId': postId,
      'userProfileId': userProfileId,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'PostPeopleTagged',
      if (id != null) 'id': id,
      'postId': postId,
      'userProfileId': userProfileId,
    };
  }

  static PostPeopleTaggedInclude include() {
    return PostPeopleTaggedInclude._();
  }

  static PostPeopleTaggedIncludeList includeList({
    _i1.WhereExpressionBuilder<PostPeopleTaggedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostPeopleTaggedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostPeopleTaggedTable>? orderByList,
    PostPeopleTaggedInclude? include,
  }) {
    return PostPeopleTaggedIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PostPeopleTagged.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PostPeopleTagged.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PostPeopleTaggedImpl extends PostPeopleTagged {
  _PostPeopleTaggedImpl({
    int? id,
    required int postId,
    required int userProfileId,
  }) : super._(
         id: id,
         postId: postId,
         userProfileId: userProfileId,
       );

  /// Returns a shallow copy of this [PostPeopleTagged]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PostPeopleTagged copyWith({
    Object? id = _Undefined,
    int? postId,
    int? userProfileId,
  }) {
    return PostPeopleTagged(
      id: id is int? ? id : this.id,
      postId: postId ?? this.postId,
      userProfileId: userProfileId ?? this.userProfileId,
    );
  }
}

class PostPeopleTaggedUpdateTable
    extends _i1.UpdateTable<PostPeopleTaggedTable> {
  PostPeopleTaggedUpdateTable(super.table);

  _i1.ColumnValue<int, int> postId(int value) => _i1.ColumnValue(
    table.postId,
    value,
  );

  _i1.ColumnValue<int, int> userProfileId(int value) => _i1.ColumnValue(
    table.userProfileId,
    value,
  );
}

class PostPeopleTaggedTable extends _i1.Table<int?> {
  PostPeopleTaggedTable({super.tableRelation})
    : super(tableName: 'post_people_tagged') {
    updateTable = PostPeopleTaggedUpdateTable(this);
    postId = _i1.ColumnInt(
      'postId',
      this,
    );
    userProfileId = _i1.ColumnInt(
      'userProfileId',
      this,
    );
  }

  late final PostPeopleTaggedUpdateTable updateTable;

  late final _i1.ColumnInt postId;

  late final _i1.ColumnInt userProfileId;

  @override
  List<_i1.Column> get columns => [
    id,
    postId,
    userProfileId,
  ];
}

class PostPeopleTaggedInclude extends _i1.IncludeObject {
  PostPeopleTaggedInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PostPeopleTagged.t;
}

class PostPeopleTaggedIncludeList extends _i1.IncludeList {
  PostPeopleTaggedIncludeList._({
    _i1.WhereExpressionBuilder<PostPeopleTaggedTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PostPeopleTagged.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PostPeopleTagged.t;
}

class PostPeopleTaggedRepository {
  const PostPeopleTaggedRepository._();

  /// Returns a list of [PostPeopleTagged]s matching the given query parameters.
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
  Future<List<PostPeopleTagged>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostPeopleTaggedTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostPeopleTaggedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostPeopleTaggedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PostPeopleTagged>(
      where: where?.call(PostPeopleTagged.t),
      orderBy: orderBy?.call(PostPeopleTagged.t),
      orderByList: orderByList?.call(PostPeopleTagged.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PostPeopleTagged] matching the given query parameters.
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
  Future<PostPeopleTagged?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostPeopleTaggedTable>? where,
    int? offset,
    _i1.OrderByBuilder<PostPeopleTaggedTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostPeopleTaggedTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PostPeopleTagged>(
      where: where?.call(PostPeopleTagged.t),
      orderBy: orderBy?.call(PostPeopleTagged.t),
      orderByList: orderByList?.call(PostPeopleTagged.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PostPeopleTagged] by its [id] or null if no such row exists.
  Future<PostPeopleTagged?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PostPeopleTagged>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PostPeopleTagged]s in the list and returns the inserted rows.
  ///
  /// The returned [PostPeopleTagged]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PostPeopleTagged>> insert(
    _i1.Session session,
    List<PostPeopleTagged> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PostPeopleTagged>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PostPeopleTagged] and returns the inserted row.
  ///
  /// The returned [PostPeopleTagged] will have its `id` field set.
  Future<PostPeopleTagged> insertRow(
    _i1.Session session,
    PostPeopleTagged row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PostPeopleTagged>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PostPeopleTagged]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PostPeopleTagged>> update(
    _i1.Session session,
    List<PostPeopleTagged> rows, {
    _i1.ColumnSelections<PostPeopleTaggedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PostPeopleTagged>(
      rows,
      columns: columns?.call(PostPeopleTagged.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PostPeopleTagged]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PostPeopleTagged> updateRow(
    _i1.Session session,
    PostPeopleTagged row, {
    _i1.ColumnSelections<PostPeopleTaggedTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PostPeopleTagged>(
      row,
      columns: columns?.call(PostPeopleTagged.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PostPeopleTagged] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<PostPeopleTagged?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PostPeopleTaggedUpdateTable>
    columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<PostPeopleTagged>(
      id,
      columnValues: columnValues(PostPeopleTagged.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [PostPeopleTagged]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<PostPeopleTagged>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PostPeopleTaggedUpdateTable>
    columnValues,
    required _i1.WhereExpressionBuilder<PostPeopleTaggedTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostPeopleTaggedTable>? orderBy,
    _i1.OrderByListBuilder<PostPeopleTaggedTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<PostPeopleTagged>(
      columnValues: columnValues(PostPeopleTagged.t.updateTable),
      where: where(PostPeopleTagged.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PostPeopleTagged.t),
      orderByList: orderByList?.call(PostPeopleTagged.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [PostPeopleTagged]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PostPeopleTagged>> delete(
    _i1.Session session,
    List<PostPeopleTagged> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PostPeopleTagged>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PostPeopleTagged].
  Future<PostPeopleTagged> deleteRow(
    _i1.Session session,
    PostPeopleTagged row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PostPeopleTagged>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PostPeopleTagged>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PostPeopleTaggedTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PostPeopleTagged>(
      where: where(PostPeopleTagged.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostPeopleTaggedTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PostPeopleTagged>(
      where: where?.call(PostPeopleTagged.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
