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

abstract class ChatMessage
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  ChatMessage._({
    this.id,
    required this.senderId,
    required this.receiverId,
    required this.message,
    this.type,
    this.mediaType,
    this.mediaUrl,
    this.mediaSize,
    this.replyId,
    this.replyText,
    this.replyUser,
    required this.read,
    this.createdAt,
  });

  factory ChatMessage({
    int? id,
    required int senderId,
    required int receiverId,
    required String message,
    String? type,
    String? mediaType,
    String? mediaUrl,
    String? mediaSize,
    int? replyId,
    String? replyText,
    String? replyUser,
    required bool read,
    DateTime? createdAt,
  }) = _ChatMessageImpl;

  factory ChatMessage.fromJson(Map<String, dynamic> jsonSerialization) {
    return ChatMessage(
      id: jsonSerialization['id'] as int?,
      senderId: jsonSerialization['senderId'] as int,
      receiverId: jsonSerialization['receiverId'] as int,
      message: jsonSerialization['message'] as String,
      type: jsonSerialization['type'] as String?,
      mediaType: jsonSerialization['mediaType'] as String?,
      mediaUrl: jsonSerialization['mediaUrl'] as String?,
      mediaSize: jsonSerialization['mediaSize'] as String?,
      replyId: jsonSerialization['replyId'] as int?,
      replyText: jsonSerialization['replyText'] as String?,
      replyUser: jsonSerialization['replyUser'] as String?,
      read: jsonSerialization['read'] as bool,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  static final t = ChatMessageTable();

  static const db = ChatMessageRepository._();

  @override
  int? id;

  int senderId;

  int receiverId;

  String message;

  String? type;

  String? mediaType;

  String? mediaUrl;

  String? mediaSize;

  int? replyId;

  String? replyText;

  String? replyUser;

  bool read;

  DateTime? createdAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [ChatMessage]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ChatMessage copyWith({
    int? id,
    int? senderId,
    int? receiverId,
    String? message,
    String? type,
    String? mediaType,
    String? mediaUrl,
    String? mediaSize,
    int? replyId,
    String? replyText,
    String? replyUser,
    bool? read,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ChatMessage',
      if (id != null) 'id': id,
      'senderId': senderId,
      'receiverId': receiverId,
      'message': message,
      if (type != null) 'type': type,
      if (mediaType != null) 'mediaType': mediaType,
      if (mediaUrl != null) 'mediaUrl': mediaUrl,
      if (mediaSize != null) 'mediaSize': mediaSize,
      if (replyId != null) 'replyId': replyId,
      if (replyText != null) 'replyText': replyText,
      if (replyUser != null) 'replyUser': replyUser,
      'read': read,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ChatMessage',
      if (id != null) 'id': id,
      'senderId': senderId,
      'receiverId': receiverId,
      'message': message,
      if (type != null) 'type': type,
      if (mediaType != null) 'mediaType': mediaType,
      if (mediaUrl != null) 'mediaUrl': mediaUrl,
      if (mediaSize != null) 'mediaSize': mediaSize,
      if (replyId != null) 'replyId': replyId,
      if (replyText != null) 'replyText': replyText,
      if (replyUser != null) 'replyUser': replyUser,
      'read': read,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
    };
  }

  static ChatMessageInclude include() {
    return ChatMessageInclude._();
  }

  static ChatMessageIncludeList includeList({
    _i1.WhereExpressionBuilder<ChatMessageTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChatMessageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChatMessageTable>? orderByList,
    ChatMessageInclude? include,
  }) {
    return ChatMessageIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ChatMessage.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ChatMessage.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ChatMessageImpl extends ChatMessage {
  _ChatMessageImpl({
    int? id,
    required int senderId,
    required int receiverId,
    required String message,
    String? type,
    String? mediaType,
    String? mediaUrl,
    String? mediaSize,
    int? replyId,
    String? replyText,
    String? replyUser,
    required bool read,
    DateTime? createdAt,
  }) : super._(
         id: id,
         senderId: senderId,
         receiverId: receiverId,
         message: message,
         type: type,
         mediaType: mediaType,
         mediaUrl: mediaUrl,
         mediaSize: mediaSize,
         replyId: replyId,
         replyText: replyText,
         replyUser: replyUser,
         read: read,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [ChatMessage]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ChatMessage copyWith({
    Object? id = _Undefined,
    int? senderId,
    int? receiverId,
    String? message,
    Object? type = _Undefined,
    Object? mediaType = _Undefined,
    Object? mediaUrl = _Undefined,
    Object? mediaSize = _Undefined,
    Object? replyId = _Undefined,
    Object? replyText = _Undefined,
    Object? replyUser = _Undefined,
    bool? read,
    Object? createdAt = _Undefined,
  }) {
    return ChatMessage(
      id: id is int? ? id : this.id,
      senderId: senderId ?? this.senderId,
      receiverId: receiverId ?? this.receiverId,
      message: message ?? this.message,
      type: type is String? ? type : this.type,
      mediaType: mediaType is String? ? mediaType : this.mediaType,
      mediaUrl: mediaUrl is String? ? mediaUrl : this.mediaUrl,
      mediaSize: mediaSize is String? ? mediaSize : this.mediaSize,
      replyId: replyId is int? ? replyId : this.replyId,
      replyText: replyText is String? ? replyText : this.replyText,
      replyUser: replyUser is String? ? replyUser : this.replyUser,
      read: read ?? this.read,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}

class ChatMessageUpdateTable extends _i1.UpdateTable<ChatMessageTable> {
  ChatMessageUpdateTable(super.table);

  _i1.ColumnValue<int, int> senderId(int value) => _i1.ColumnValue(
    table.senderId,
    value,
  );

  _i1.ColumnValue<int, int> receiverId(int value) => _i1.ColumnValue(
    table.receiverId,
    value,
  );

  _i1.ColumnValue<String, String> message(String value) => _i1.ColumnValue(
    table.message,
    value,
  );

  _i1.ColumnValue<String, String> type(String? value) => _i1.ColumnValue(
    table.type,
    value,
  );

  _i1.ColumnValue<String, String> mediaType(String? value) => _i1.ColumnValue(
    table.mediaType,
    value,
  );

  _i1.ColumnValue<String, String> mediaUrl(String? value) => _i1.ColumnValue(
    table.mediaUrl,
    value,
  );

  _i1.ColumnValue<String, String> mediaSize(String? value) => _i1.ColumnValue(
    table.mediaSize,
    value,
  );

  _i1.ColumnValue<int, int> replyId(int? value) => _i1.ColumnValue(
    table.replyId,
    value,
  );

  _i1.ColumnValue<String, String> replyText(String? value) => _i1.ColumnValue(
    table.replyText,
    value,
  );

  _i1.ColumnValue<String, String> replyUser(String? value) => _i1.ColumnValue(
    table.replyUser,
    value,
  );

  _i1.ColumnValue<bool, bool> read(bool value) => _i1.ColumnValue(
    table.read,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime? value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );
}

class ChatMessageTable extends _i1.Table<int?> {
  ChatMessageTable({super.tableRelation}) : super(tableName: 'chat_messages') {
    updateTable = ChatMessageUpdateTable(this);
    senderId = _i1.ColumnInt(
      'senderId',
      this,
    );
    receiverId = _i1.ColumnInt(
      'receiverId',
      this,
    );
    message = _i1.ColumnString(
      'message',
      this,
    );
    type = _i1.ColumnString(
      'type',
      this,
    );
    mediaType = _i1.ColumnString(
      'mediaType',
      this,
    );
    mediaUrl = _i1.ColumnString(
      'mediaUrl',
      this,
    );
    mediaSize = _i1.ColumnString(
      'mediaSize',
      this,
    );
    replyId = _i1.ColumnInt(
      'replyId',
      this,
    );
    replyText = _i1.ColumnString(
      'replyText',
      this,
    );
    replyUser = _i1.ColumnString(
      'replyUser',
      this,
    );
    read = _i1.ColumnBool(
      'read',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final ChatMessageUpdateTable updateTable;

  late final _i1.ColumnInt senderId;

  late final _i1.ColumnInt receiverId;

  late final _i1.ColumnString message;

  late final _i1.ColumnString type;

  late final _i1.ColumnString mediaType;

  late final _i1.ColumnString mediaUrl;

  late final _i1.ColumnString mediaSize;

  late final _i1.ColumnInt replyId;

  late final _i1.ColumnString replyText;

  late final _i1.ColumnString replyUser;

  late final _i1.ColumnBool read;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    senderId,
    receiverId,
    message,
    type,
    mediaType,
    mediaUrl,
    mediaSize,
    replyId,
    replyText,
    replyUser,
    read,
    createdAt,
  ];
}

class ChatMessageInclude extends _i1.IncludeObject {
  ChatMessageInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => ChatMessage.t;
}

class ChatMessageIncludeList extends _i1.IncludeList {
  ChatMessageIncludeList._({
    _i1.WhereExpressionBuilder<ChatMessageTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ChatMessage.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => ChatMessage.t;
}

class ChatMessageRepository {
  const ChatMessageRepository._();

  /// Returns a list of [ChatMessage]s matching the given query parameters.
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
  Future<List<ChatMessage>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ChatMessageTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChatMessageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChatMessageTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ChatMessage>(
      where: where?.call(ChatMessage.t),
      orderBy: orderBy?.call(ChatMessage.t),
      orderByList: orderByList?.call(ChatMessage.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [ChatMessage] matching the given query parameters.
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
  Future<ChatMessage?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ChatMessageTable>? where,
    int? offset,
    _i1.OrderByBuilder<ChatMessageTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ChatMessageTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<ChatMessage>(
      where: where?.call(ChatMessage.t),
      orderBy: orderBy?.call(ChatMessage.t),
      orderByList: orderByList?.call(ChatMessage.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [ChatMessage] by its [id] or null if no such row exists.
  Future<ChatMessage?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<ChatMessage>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [ChatMessage]s in the list and returns the inserted rows.
  ///
  /// The returned [ChatMessage]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<ChatMessage>> insert(
    _i1.Session session,
    List<ChatMessage> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<ChatMessage>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [ChatMessage] and returns the inserted row.
  ///
  /// The returned [ChatMessage] will have its `id` field set.
  Future<ChatMessage> insertRow(
    _i1.Session session,
    ChatMessage row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ChatMessage>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ChatMessage]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ChatMessage>> update(
    _i1.Session session,
    List<ChatMessage> rows, {
    _i1.ColumnSelections<ChatMessageTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ChatMessage>(
      rows,
      columns: columns?.call(ChatMessage.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ChatMessage]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ChatMessage> updateRow(
    _i1.Session session,
    ChatMessage row, {
    _i1.ColumnSelections<ChatMessageTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ChatMessage>(
      row,
      columns: columns?.call(ChatMessage.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ChatMessage] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<ChatMessage?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<ChatMessageUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<ChatMessage>(
      id,
      columnValues: columnValues(ChatMessage.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [ChatMessage]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<ChatMessage>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<ChatMessageUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<ChatMessageTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ChatMessageTable>? orderBy,
    _i1.OrderByListBuilder<ChatMessageTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<ChatMessage>(
      columnValues: columnValues(ChatMessage.t.updateTable),
      where: where(ChatMessage.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ChatMessage.t),
      orderByList: orderByList?.call(ChatMessage.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [ChatMessage]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ChatMessage>> delete(
    _i1.Session session,
    List<ChatMessage> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ChatMessage>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ChatMessage].
  Future<ChatMessage> deleteRow(
    _i1.Session session,
    ChatMessage row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ChatMessage>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ChatMessage>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ChatMessageTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ChatMessage>(
      where: where(ChatMessage.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ChatMessageTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ChatMessage>(
      where: where?.call(ChatMessage.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
