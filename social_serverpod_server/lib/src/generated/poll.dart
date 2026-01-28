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

abstract class Poll implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Poll._({
    this.id,
    this.userId,
    required this.question,
    required this.isMultipleChoice,
    this.expiresAt,
    this.createdAt,
  });

  factory Poll({
    int? id,
    int? userId,
    required String question,
    required bool isMultipleChoice,
    DateTime? expiresAt,
    DateTime? createdAt,
  }) = _PollImpl;

  factory Poll.fromJson(Map<String, dynamic> jsonSerialization) {
    return Poll(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      question: jsonSerialization['question'] as String,
      isMultipleChoice: jsonSerialization['isMultipleChoice'] as bool,
      expiresAt: jsonSerialization['expiresAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['expiresAt']),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = PollTable();

  static const db = PollRepository._();

  @override
  int? id;

  int? userId;

  String question;

  bool isMultipleChoice;

  DateTime? expiresAt;

  DateTime? createdAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Poll]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Poll copyWith({
    int? id,
    int? userId,
    String? question,
    bool? isMultipleChoice,
    DateTime? expiresAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Poll',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      'question': question,
      'isMultipleChoice': isMultipleChoice,
      if (expiresAt != null) 'expiresAt': expiresAt?.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Poll',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      'question': question,
      'isMultipleChoice': isMultipleChoice,
      if (expiresAt != null) 'expiresAt': expiresAt?.toJson(),
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  static PollInclude include() {
    return PollInclude._();
  }

  static PollIncludeList includeList({
    _i1.WhereExpressionBuilder<PollTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PollTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PollTable>? orderByList,
    PollInclude? include,
  }) {
    return PollIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Poll.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Poll.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PollImpl extends Poll {
  _PollImpl({
    int? id,
    int? userId,
    required String question,
    required bool isMultipleChoice,
    DateTime? expiresAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         userId: userId,
         question: question,
         isMultipleChoice: isMultipleChoice,
         expiresAt: expiresAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [Poll]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Poll copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    String? question,
    bool? isMultipleChoice,
    Object? expiresAt = _Undefined,
    Object? createdAt = _Undefined,
  }) {
    return Poll(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      question: question ?? this.question,
      isMultipleChoice: isMultipleChoice ?? this.isMultipleChoice,
      expiresAt: expiresAt is DateTime? ? expiresAt : this.expiresAt,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}

class PollUpdateTable extends _i1.UpdateTable<PollTable> {
  PollUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int? value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<String, String> question(String value) => _i1.ColumnValue(
    table.question,
    value,
  );

  _i1.ColumnValue<bool, bool> isMultipleChoice(bool value) => _i1.ColumnValue(
    table.isMultipleChoice,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> expiresAt(DateTime? value) =>
      _i1.ColumnValue(
        table.expiresAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime? value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );
}

class PollTable extends _i1.Table<int?> {
  PollTable({super.tableRelation}) : super(tableName: 'polls') {
    updateTable = PollUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    question = _i1.ColumnString(
      'question',
      this,
    );
    isMultipleChoice = _i1.ColumnBool(
      'isMultipleChoice',
      this,
    );
    expiresAt = _i1.ColumnDateTime(
      'expiresAt',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final PollUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString question;

  late final _i1.ColumnBool isMultipleChoice;

  late final _i1.ColumnDateTime expiresAt;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    question,
    isMultipleChoice,
    expiresAt,
    createdAt,
  ];
}

class PollInclude extends _i1.IncludeObject {
  PollInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Poll.t;
}

class PollIncludeList extends _i1.IncludeList {
  PollIncludeList._({
    _i1.WhereExpressionBuilder<PollTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Poll.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Poll.t;
}

class PollRepository {
  const PollRepository._();

  /// Returns a list of [Poll]s matching the given query parameters.
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
  Future<List<Poll>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PollTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PollTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PollTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Poll>(
      where: where?.call(Poll.t),
      orderBy: orderBy?.call(Poll.t),
      orderByList: orderByList?.call(Poll.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Poll] matching the given query parameters.
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
  Future<Poll?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PollTable>? where,
    int? offset,
    _i1.OrderByBuilder<PollTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PollTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Poll>(
      where: where?.call(Poll.t),
      orderBy: orderBy?.call(Poll.t),
      orderByList: orderByList?.call(Poll.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Poll] by its [id] or null if no such row exists.
  Future<Poll?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Poll>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Poll]s in the list and returns the inserted rows.
  ///
  /// The returned [Poll]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Poll>> insert(
    _i1.Session session,
    List<Poll> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Poll>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Poll] and returns the inserted row.
  ///
  /// The returned [Poll] will have its `id` field set.
  Future<Poll> insertRow(
    _i1.Session session,
    Poll row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Poll>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Poll]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Poll>> update(
    _i1.Session session,
    List<Poll> rows, {
    _i1.ColumnSelections<PollTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Poll>(
      rows,
      columns: columns?.call(Poll.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Poll]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Poll> updateRow(
    _i1.Session session,
    Poll row, {
    _i1.ColumnSelections<PollTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Poll>(
      row,
      columns: columns?.call(Poll.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Poll] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Poll?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PollUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Poll>(
      id,
      columnValues: columnValues(Poll.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Poll]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Poll>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PollUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PollTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PollTable>? orderBy,
    _i1.OrderByListBuilder<PollTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Poll>(
      columnValues: columnValues(Poll.t.updateTable),
      where: where(Poll.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Poll.t),
      orderByList: orderByList?.call(Poll.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Poll]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Poll>> delete(
    _i1.Session session,
    List<Poll> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Poll>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Poll].
  Future<Poll> deleteRow(
    _i1.Session session,
    Poll row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Poll>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Poll>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PollTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Poll>(
      where: where(Poll.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PollTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Poll>(
      where: where?.call(Poll.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
