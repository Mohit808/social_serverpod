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

abstract class Post implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  Post._({
    this.id,
    this.userId,
    this.text,
    this.image,
    this.location,
    this.latitude,
    this.longitude,
    this.cityId,
    this.description,
    this.canReply,
    required this.isPublic,
    required this.likesCount,
    required this.commentsCount,
    required this.viewsCount,
    required this.retweetCount,
    this.retweetedPostId,
    this.pollId,
    required this.isDeleted,
    required this.isReported,
    required this.isArchived,
    this.createdAt,
    this.updatedAt,
  });

  factory Post({
    int? id,
    int? userId,
    String? text,
    String? image,
    String? location,
    double? latitude,
    double? longitude,
    int? cityId,
    String? description,
    int? canReply,
    required bool isPublic,
    required int likesCount,
    required int commentsCount,
    required int viewsCount,
    required int retweetCount,
    int? retweetedPostId,
    int? pollId,
    required bool isDeleted,
    required bool isReported,
    required bool isArchived,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _PostImpl;

  factory Post.fromJson(Map<String, dynamic> jsonSerialization) {
    return Post(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      text: jsonSerialization['text'] as String?,
      image: jsonSerialization['image'] as String?,
      location: jsonSerialization['location'] as String?,
      latitude: (jsonSerialization['latitude'] as num?)?.toDouble(),
      longitude: (jsonSerialization['longitude'] as num?)?.toDouble(),
      cityId: jsonSerialization['cityId'] as int?,
      description: jsonSerialization['description'] as String?,
      canReply: jsonSerialization['canReply'] as int?,
      isPublic: jsonSerialization['isPublic'] as bool,
      likesCount: jsonSerialization['likesCount'] as int,
      commentsCount: jsonSerialization['commentsCount'] as int,
      viewsCount: jsonSerialization['viewsCount'] as int,
      retweetCount: jsonSerialization['retweetCount'] as int,
      retweetedPostId: jsonSerialization['retweetedPostId'] as int?,
      pollId: jsonSerialization['pollId'] as int?,
      isDeleted: jsonSerialization['isDeleted'] as bool,
      isReported: jsonSerialization['isReported'] as bool,
      isArchived: jsonSerialization['isArchived'] as bool,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt: jsonSerialization['updatedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = PostTable();

  static const db = PostRepository._();

  @override
  int? id;

  int? userId;

  String? text;

  String? image;

  String? location;

  double? latitude;

  double? longitude;

  int? cityId;

  String? description;

  int? canReply;

  bool isPublic;

  int likesCount;

  int commentsCount;

  int viewsCount;

  int retweetCount;

  int? retweetedPostId;

  int? pollId;

  bool isDeleted;

  bool isReported;

  bool isArchived;

  DateTime? createdAt;

  DateTime? updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [Post]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Post copyWith({
    int? id,
    int? userId,
    String? text,
    String? image,
    String? location,
    double? latitude,
    double? longitude,
    int? cityId,
    String? description,
    int? canReply,
    bool? isPublic,
    int? likesCount,
    int? commentsCount,
    int? viewsCount,
    int? retweetCount,
    int? retweetedPostId,
    int? pollId,
    bool? isDeleted,
    bool? isReported,
    bool? isArchived,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Post',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (text != null) 'text': text,
      if (image != null) 'image': image,
      if (location != null) 'location': location,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (cityId != null) 'cityId': cityId,
      if (description != null) 'description': description,
      if (canReply != null) 'canReply': canReply,
      'isPublic': isPublic,
      'likesCount': likesCount,
      'commentsCount': commentsCount,
      'viewsCount': viewsCount,
      'retweetCount': retweetCount,
      if (retweetedPostId != null) 'retweetedPostId': retweetedPostId,
      if (pollId != null) 'pollId': pollId,
      'isDeleted': isDeleted,
      'isReported': isReported,
      'isArchived': isArchived,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'Post',
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (text != null) 'text': text,
      if (image != null) 'image': image,
      if (location != null) 'location': location,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (cityId != null) 'cityId': cityId,
      if (description != null) 'description': description,
      if (canReply != null) 'canReply': canReply,
      'isPublic': isPublic,
      'likesCount': likesCount,
      'commentsCount': commentsCount,
      'viewsCount': viewsCount,
      'retweetCount': retweetCount,
      if (retweetedPostId != null) 'retweetedPostId': retweetedPostId,
      if (pollId != null) 'pollId': pollId,
      'isDeleted': isDeleted,
      'isReported': isReported,
      'isArchived': isArchived,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
      if (updatedAt != null) 'updatedAt': updatedAt?.toJson(),
    };
  }

  static PostInclude include() {
    return PostInclude._();
  }

  static PostIncludeList includeList({
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTable>? orderByList,
    PostInclude? include,
  }) {
    return PostIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Post.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Post.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PostImpl extends Post {
  _PostImpl({
    int? id,
    int? userId,
    String? text,
    String? image,
    String? location,
    double? latitude,
    double? longitude,
    int? cityId,
    String? description,
    int? canReply,
    required bool isPublic,
    required int likesCount,
    required int commentsCount,
    required int viewsCount,
    required int retweetCount,
    int? retweetedPostId,
    int? pollId,
    required bool isDeleted,
    required bool isReported,
    required bool isArchived,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) : super._(
         id: id,
         userId: userId,
         text: text,
         image: image,
         location: location,
         latitude: latitude,
         longitude: longitude,
         cityId: cityId,
         description: description,
         canReply: canReply,
         isPublic: isPublic,
         likesCount: likesCount,
         commentsCount: commentsCount,
         viewsCount: viewsCount,
         retweetCount: retweetCount,
         retweetedPostId: retweetedPostId,
         pollId: pollId,
         isDeleted: isDeleted,
         isReported: isReported,
         isArchived: isArchived,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Post]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Post copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    Object? text = _Undefined,
    Object? image = _Undefined,
    Object? location = _Undefined,
    Object? latitude = _Undefined,
    Object? longitude = _Undefined,
    Object? cityId = _Undefined,
    Object? description = _Undefined,
    Object? canReply = _Undefined,
    bool? isPublic,
    int? likesCount,
    int? commentsCount,
    int? viewsCount,
    int? retweetCount,
    Object? retweetedPostId = _Undefined,
    Object? pollId = _Undefined,
    bool? isDeleted,
    bool? isReported,
    bool? isArchived,
    Object? createdAt = _Undefined,
    Object? updatedAt = _Undefined,
  }) {
    return Post(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      text: text is String? ? text : this.text,
      image: image is String? ? image : this.image,
      location: location is String? ? location : this.location,
      latitude: latitude is double? ? latitude : this.latitude,
      longitude: longitude is double? ? longitude : this.longitude,
      cityId: cityId is int? ? cityId : this.cityId,
      description: description is String? ? description : this.description,
      canReply: canReply is int? ? canReply : this.canReply,
      isPublic: isPublic ?? this.isPublic,
      likesCount: likesCount ?? this.likesCount,
      commentsCount: commentsCount ?? this.commentsCount,
      viewsCount: viewsCount ?? this.viewsCount,
      retweetCount: retweetCount ?? this.retweetCount,
      retweetedPostId: retweetedPostId is int?
          ? retweetedPostId
          : this.retweetedPostId,
      pollId: pollId is int? ? pollId : this.pollId,
      isDeleted: isDeleted ?? this.isDeleted,
      isReported: isReported ?? this.isReported,
      isArchived: isArchived ?? this.isArchived,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
      updatedAt: updatedAt is DateTime? ? updatedAt : this.updatedAt,
    );
  }
}

class PostUpdateTable extends _i1.UpdateTable<PostTable> {
  PostUpdateTable(super.table);

  _i1.ColumnValue<int, int> userId(int? value) => _i1.ColumnValue(
    table.userId,
    value,
  );

  _i1.ColumnValue<String, String> text(String? value) => _i1.ColumnValue(
    table.text,
    value,
  );

  _i1.ColumnValue<String, String> image(String? value) => _i1.ColumnValue(
    table.image,
    value,
  );

  _i1.ColumnValue<String, String> location(String? value) => _i1.ColumnValue(
    table.location,
    value,
  );

  _i1.ColumnValue<double, double> latitude(double? value) => _i1.ColumnValue(
    table.latitude,
    value,
  );

  _i1.ColumnValue<double, double> longitude(double? value) => _i1.ColumnValue(
    table.longitude,
    value,
  );

  _i1.ColumnValue<int, int> cityId(int? value) => _i1.ColumnValue(
    table.cityId,
    value,
  );

  _i1.ColumnValue<String, String> description(String? value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<int, int> canReply(int? value) => _i1.ColumnValue(
    table.canReply,
    value,
  );

  _i1.ColumnValue<bool, bool> isPublic(bool value) => _i1.ColumnValue(
    table.isPublic,
    value,
  );

  _i1.ColumnValue<int, int> likesCount(int value) => _i1.ColumnValue(
    table.likesCount,
    value,
  );

  _i1.ColumnValue<int, int> commentsCount(int value) => _i1.ColumnValue(
    table.commentsCount,
    value,
  );

  _i1.ColumnValue<int, int> viewsCount(int value) => _i1.ColumnValue(
    table.viewsCount,
    value,
  );

  _i1.ColumnValue<int, int> retweetCount(int value) => _i1.ColumnValue(
    table.retweetCount,
    value,
  );

  _i1.ColumnValue<int, int> retweetedPostId(int? value) => _i1.ColumnValue(
    table.retweetedPostId,
    value,
  );

  _i1.ColumnValue<int, int> pollId(int? value) => _i1.ColumnValue(
    table.pollId,
    value,
  );

  _i1.ColumnValue<bool, bool> isDeleted(bool value) => _i1.ColumnValue(
    table.isDeleted,
    value,
  );

  _i1.ColumnValue<bool, bool> isReported(bool value) => _i1.ColumnValue(
    table.isReported,
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

  _i1.ColumnValue<DateTime, DateTime> updatedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.updatedAt,
        value,
      );
}

class PostTable extends _i1.Table<int?> {
  PostTable({super.tableRelation}) : super(tableName: 'posts') {
    updateTable = PostUpdateTable(this);
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    text = _i1.ColumnString(
      'text',
      this,
    );
    image = _i1.ColumnString(
      'image',
      this,
    );
    location = _i1.ColumnString(
      'location',
      this,
    );
    latitude = _i1.ColumnDouble(
      'latitude',
      this,
    );
    longitude = _i1.ColumnDouble(
      'longitude',
      this,
    );
    cityId = _i1.ColumnInt(
      'cityId',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    canReply = _i1.ColumnInt(
      'canReply',
      this,
    );
    isPublic = _i1.ColumnBool(
      'isPublic',
      this,
    );
    likesCount = _i1.ColumnInt(
      'likesCount',
      this,
    );
    commentsCount = _i1.ColumnInt(
      'commentsCount',
      this,
    );
    viewsCount = _i1.ColumnInt(
      'viewsCount',
      this,
    );
    retweetCount = _i1.ColumnInt(
      'retweetCount',
      this,
    );
    retweetedPostId = _i1.ColumnInt(
      'retweetedPostId',
      this,
    );
    pollId = _i1.ColumnInt(
      'pollId',
      this,
    );
    isDeleted = _i1.ColumnBool(
      'isDeleted',
      this,
    );
    isReported = _i1.ColumnBool(
      'isReported',
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
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final PostUpdateTable updateTable;

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString text;

  late final _i1.ColumnString image;

  late final _i1.ColumnString location;

  late final _i1.ColumnDouble latitude;

  late final _i1.ColumnDouble longitude;

  late final _i1.ColumnInt cityId;

  late final _i1.ColumnString description;

  late final _i1.ColumnInt canReply;

  late final _i1.ColumnBool isPublic;

  late final _i1.ColumnInt likesCount;

  late final _i1.ColumnInt commentsCount;

  late final _i1.ColumnInt viewsCount;

  late final _i1.ColumnInt retweetCount;

  late final _i1.ColumnInt retweetedPostId;

  late final _i1.ColumnInt pollId;

  late final _i1.ColumnBool isDeleted;

  late final _i1.ColumnBool isReported;

  late final _i1.ColumnBool isArchived;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    userId,
    text,
    image,
    location,
    latitude,
    longitude,
    cityId,
    description,
    canReply,
    isPublic,
    likesCount,
    commentsCount,
    viewsCount,
    retweetCount,
    retweetedPostId,
    pollId,
    isDeleted,
    isReported,
    isArchived,
    createdAt,
    updatedAt,
  ];
}

class PostInclude extends _i1.IncludeObject {
  PostInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Post.t;
}

class PostIncludeList extends _i1.IncludeList {
  PostIncludeList._({
    _i1.WhereExpressionBuilder<PostTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Post.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Post.t;
}

class PostRepository {
  const PostRepository._();

  /// Returns a list of [Post]s matching the given query parameters.
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
  Future<List<Post>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Post>(
      where: where?.call(Post.t),
      orderBy: orderBy?.call(Post.t),
      orderByList: orderByList?.call(Post.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Post] matching the given query parameters.
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
  Future<Post?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? offset,
    _i1.OrderByBuilder<PostTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PostTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Post>(
      where: where?.call(Post.t),
      orderBy: orderBy?.call(Post.t),
      orderByList: orderByList?.call(Post.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Post] by its [id] or null if no such row exists.
  Future<Post?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Post>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Post]s in the list and returns the inserted rows.
  ///
  /// The returned [Post]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Post>> insert(
    _i1.Session session,
    List<Post> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Post>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Post] and returns the inserted row.
  ///
  /// The returned [Post] will have its `id` field set.
  Future<Post> insertRow(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Post>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Post]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Post>> update(
    _i1.Session session,
    List<Post> rows, {
    _i1.ColumnSelections<PostTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Post>(
      rows,
      columns: columns?.call(Post.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Post]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Post> updateRow(
    _i1.Session session,
    Post row, {
    _i1.ColumnSelections<PostTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Post>(
      row,
      columns: columns?.call(Post.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Post] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Post?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<PostUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Post>(
      id,
      columnValues: columnValues(Post.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Post]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Post>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<PostUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<PostTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PostTable>? orderBy,
    _i1.OrderByListBuilder<PostTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Post>(
      columnValues: columnValues(Post.t.updateTable),
      where: where(Post.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Post.t),
      orderByList: orderByList?.call(Post.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Post]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Post>> delete(
    _i1.Session session,
    List<Post> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Post>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Post].
  Future<Post> deleteRow(
    _i1.Session session,
    Post row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Post>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Post>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PostTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Post>(
      where: where(Post.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PostTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Post>(
      where: where?.call(Post.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
