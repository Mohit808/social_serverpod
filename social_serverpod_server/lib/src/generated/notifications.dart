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

abstract class Notification
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Notification._({
    this.id,
    required this.userId,
    this.senderId,
    this.notificationType,
    this.postId,
    this.commentId,
    this.replyCommentId,
    this.pollId,
    this.message,
    required this.isRead,
    required this.isArchived,
    this.createdAt,
  });

  factory Notification({
    int? id,
    required int userId,
    int? senderId,
    String? notificationType,
    int? postId,
    int? commentId,
    int? replyCommentId,
    int? pollId,
    String? message,
    required bool isRead,
    required bool isArchived,
    DateTime? createdAt,
  }) = _NotificationImpl;

  factory Notification.fromJson(Map<String, dynamic> jsonSerialization) {
    return Notification(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      senderId: jsonSerialization['senderId'] as int?,
      notificationType: jsonSerialization['notificationType'] as String?,
      postId: jsonSerialization['postId'] as int?,
      commentId: jsonSerialization['commentId'] as int?,
      replyCommentId: jsonSerialization['replyCommentId'] as int?,
      pollId: jsonSerialization['pollId'] as int?,
      message: jsonSerialization['message'] as String?,
      isRead: jsonSerialization['isRead'] as bool,
      isArchived: jsonSerialization['isArchived'] as bool,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = NotificationTable();

  static const db = NotificationRepository._();

  @override
  int? id;

  int userId;

  int? senderId;

  String? notificationType;

  int? postId;

  int? commentId;

  int? replyCommentId;

  int? pollId;

  String? message;

  bool isRead;

  bool isArchived;

  DateTime? createdAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Notification]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Notification copyWith({
    int? id,
    int? userId,
    int? senderId,
    String? notificationType,
    int? postId,
    int? commentId,
    int? replyCommentId,
    int? pollId,
    String? message,
    bool? isRead,
    bool? isArchived,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Notification',
      if (id != null) 'id': id,
      'userId': userId,
      if (senderId != null) 'senderId': senderId,
      if (notificationType != null) 'notificationType': notificationType,
      if (postId != null) 'postId': postId,
      if (commentId != null) 'commentId': commentId,
      if (replyCommentId != null) 'replyCommentId': replyCommentId,
      if (pollId != null) 'pollId': pollId,
      if (message != null) 'message': message,
      'isRead': isRead,
      'isArchived': isArchived,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Notification',
      if (id != null) 'id': id,
      'userId': userId,
      if (senderId != null) 'senderId': senderId,
      if (notificationType != null) 'notificationType': notificationType,
      if (postId != null) 'postId': postId,
      if (commentId != null) 'commentId': commentId,
      if (replyCommentId != null) 'replyCommentId': replyCommentId,
      if (pollId != null) 'pollId': pollId,
      if (message != null) 'message': message,
      'isRead': isRead,
      'isArchived': isArchived,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  static NotificationInclude include() {
    return NotificationInclude._();
  }

  static NotificationIncludeList includeList({
    _i1.WhereExpressionBuilder<NotificationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NotificationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotificationTable>? orderByList,
    NotificationInclude? include,
  }) {
    return NotificationIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Notification.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Notification.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _NotificationImpl extends Notification {
  _NotificationImpl({
    int? id,
    required int userId,
    int? senderId,
    String? notificationType,
    int? postId,
    int? commentId,
    int? replyCommentId,
    int? pollId,
    String? message,
    required bool isRead,
    required bool isArchived,
    DateTime? createdAt,
  }) : super._(
         id: id,
         userId: userId,
         senderId: senderId,
         notificationType: notificationType,
         postId: postId,
         commentId: commentId,
         replyCommentId: replyCommentId,
         pollId: pollId,
         message: message,
         isRead: isRead,
         isArchived: isArchived,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [Notification]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Notification copyWith({
    Object? id = _Undefined,
    int? userId,
    Object? senderId = _Undefined,
    Object? notificationType = _Undefined,
    Object? postId = _Undefined,
    Object? commentId = _Undefined,
    Object? replyCommentId = _Undefined,
    Object? pollId = _Undefined,
    Object? message = _Undefined,
    bool? isRead,
    bool? isArchived,
    Object? createdAt = _Undefined,
  }) {
    return Notification(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      senderId: senderId is int? ? senderId : this.senderId,
      notificationType: notificationType is String?
          ? notificationType
          : this.notificationType,
      postId: postId is int? ? postId : this.postId,
      commentId: commentId is int? ? commentId : this.commentId,
      replyCommentId: replyCommentId is int?
          ? replyCommentId
          : this.replyCommentId,
      pollId: pollId is int? ? pollId : this.pollId,
      message: message is String? ? message : this.message,
      isRead: isRead ?? this.isRead,
      isArchived: isArchived ?? this.isArchived,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}

class NotificationUpdateTable extends _i1.UpdateTable<NotificationTable> {
  NotificationUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<int, int> senderId(int? value) => _i1.ColumnValue(
    table.senderId,
    value,
  );

  _i1.ColumnValue<String, String> notificationType(String? value) =>
      _i1.ColumnValue(
        table.notificationType,
        value,
      );

  _i1.ColumnValue<int, int> postId(int? value) => _i1.ColumnValue(
    table.postId,
    value,
  );

  _i1.ColumnValue<int, int> commentId(int? value) => _i1.ColumnValue(
    table.commentId,
    value,
  );

  _i1.ColumnValue<int, int> replyCommentId(int? value) => _i1.ColumnValue(
    table.replyCommentId,
    value,
  );

  _i1.ColumnValue<int, int> pollId(int? value) => _i1.ColumnValue(
    table.pollId,
    value,
  );

  _i1.ColumnValue<String, String> message(String? value) => _i1.ColumnValue(
    table.message,
    value,
  );

  _i1.ColumnValue<bool, bool> isRead(bool value) => _i1.ColumnValue(
    table.isRead,
    value,
  );

  _i1.ColumnValue<bool, bool> isArchived(bool value) => _i1.ColumnValue(
    table.isArchived,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime? value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );
}

class NotificationTable extends _i1.Table<int?> {
  NotificationTable({super.tableRelation}) : super(tableName: 'notifications') {
    updateTable = NotificationUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    senderId = _i1.ColumnInt(
      'senderId',
      this,
    );
    notificationType = _i1.ColumnString(
      'notificationType',
      this,
    );
    postId = _i1.ColumnInt(
      'postId',
      this,
    );
    commentId = _i1.ColumnInt(
      'commentId',
      this,
    );
    replyCommentId = _i1.ColumnInt(
      'replyCommentId',
      this,
    );
    pollId = _i1.ColumnInt(
      'pollId',
      this,
    );
    message = _i1.ColumnString(
      'message',
      this,
    );
    isRead = _i1.ColumnBool(
      'isRead',
      this,
    );
    isArchived = _i1.ColumnBool(
      'isArchived',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final NotificationUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt senderId;

  late final _i1.ColumnString notificationType;

  late final _i1.ColumnInt postId;

  late final _i1.ColumnInt commentId;

  late final _i1.ColumnInt replyCommentId;

  late final _i1.ColumnInt pollId;

  late final _i1.ColumnString message;

  late final _i1.ColumnBool isRead;

  late final _i1.ColumnBool isArchived;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    senderId,
    notificationType,
    postId,
    commentId,
    replyCommentId,
    pollId,
    message,
    isRead,
    isArchived,
    createdAt,
  ];
}

class NotificationInclude extends _i1.IncludeObject {
  NotificationInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Notification.t;
}

class NotificationIncludeList extends _i1.IncludeList {
  NotificationIncludeList._({
    _i1.WhereExpressionBuilder<NotificationTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Notification.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Notification.t;
}

class NotificationRepository {
  const NotificationRepository._();

  /// Returns a list of [Notification]s matching the given query parameters.
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
  Future<List<Notification>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotificationTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NotificationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotificationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Notification>(
      where: where?.call(Notification.t),
      orderBy: orderBy?.call(Notification.t),
      orderByList: orderByList?.call(Notification.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Notification] matching the given query parameters.
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
  Future<Notification?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotificationTable>? where,
    int? offset,
    _i1.OrderByBuilder<NotificationTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<NotificationTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Notification>(
      where: where?.call(Notification.t),
      orderBy: orderBy?.call(Notification.t),
      orderByList: orderByList?.call(Notification.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Notification] by its [id] or null if no such row exists.
  Future<Notification?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Notification>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Notification]s in the list and returns the inserted rows.
  ///
  /// The returned [Notification]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Notification>> insert(
    _i1.Session session,
    List<Notification> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Notification>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Notification] and returns the inserted row.
  ///
  /// The returned [Notification] will have its `id` field set.
  Future<Notification> insertRow(
    _i1.Session session,
    Notification row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Notification>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Notification]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Notification>> update(
    _i1.Session session,
    List<Notification> rows, {
    _i1.ColumnSelections<NotificationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Notification>(
      rows,
      columns: columns?.call(Notification.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Notification]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Notification> updateRow(
    _i1.Session session,
    Notification row, {
    _i1.ColumnSelections<NotificationTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Notification>(
      row,
      columns: columns?.call(Notification.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Notification] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Notification?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<NotificationUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Notification>(
      id,
      columnValues: columnValues(Notification.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Notification]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Notification>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<NotificationUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<NotificationTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<NotificationTable>? orderBy,
    _i1.OrderByListBuilder<NotificationTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Notification>(
      columnValues: columnValues(Notification.t.updateTable),
      where: where(Notification.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Notification.t),
      orderByList: orderByList?.call(Notification.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Notification]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Notification>> delete(
    _i1.Session session,
    List<Notification> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Notification>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Notification].
  Future<Notification> deleteRow(
    _i1.Session session,
    Notification row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Notification>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Notification>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<NotificationTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Notification>(
      where: where(Notification.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<NotificationTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Notification>(
      where: where?.call(Notification.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
