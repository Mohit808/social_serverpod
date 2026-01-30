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
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'chat_messages.dart' as _i2;
import 'city.dart' as _i3;
import 'comment_reports.dart' as _i4;
import 'comments.dart' as _i5;
import 'contacts.dart' as _i6;
import 'follows.dart' as _i7;
import 'like_comments.dart' as _i8;
import 'likes.dart' as _i9;
import 'notifications.dart' as _i10;
import 'poll.dart' as _i11;
import 'poll_options.dart' as _i12;
import 'poll_votes.dart' as _i13;
import 'post.dart' as _i14;
import 'post_people_tagged.dart' as _i15;
import 'post_reports.dart' as _i16;
import 'post_tag.dart' as _i17;
import 'post_view_counts.dart' as _i18;
import 'reply_comments.dart' as _i19;
import 'saved_posts.dart' as _i20;
import 'stories.dart' as _i21;
import 'story_view_counts.dart' as _i22;
import 'tag.dart' as _i23;
import 'user.dart' as _i24;
import 'user_profile.dart' as _i25;
import 'package:social_serverpod_client/src/protocol/user.dart' as _i26;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i27;
export 'chat_messages.dart';
export 'city.dart';
export 'comment_reports.dart';
export 'comments.dart';
export 'contacts.dart';
export 'follows.dart';
export 'like_comments.dart';
export 'likes.dart';
export 'notifications.dart';
export 'poll.dart';
export 'poll_options.dart';
export 'poll_votes.dart';
export 'post.dart';
export 'post_people_tagged.dart';
export 'post_reports.dart';
export 'post_tag.dart';
export 'post_view_counts.dart';
export 'reply_comments.dart';
export 'saved_posts.dart';
export 'stories.dart';
export 'story_view_counts.dart';
export 'tag.dart';
export 'user.dart';
export 'user_profile.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i2.ChatMessage) {
      return _i2.ChatMessage.fromJson(data) as T;
    }
    if (t == _i3.City) {
      return _i3.City.fromJson(data) as T;
    }
    if (t == _i4.CommentReport) {
      return _i4.CommentReport.fromJson(data) as T;
    }
    if (t == _i5.Comment) {
      return _i5.Comment.fromJson(data) as T;
    }
    if (t == _i6.Contact) {
      return _i6.Contact.fromJson(data) as T;
    }
    if (t == _i7.Follow) {
      return _i7.Follow.fromJson(data) as T;
    }
    if (t == _i8.LikeComment) {
      return _i8.LikeComment.fromJson(data) as T;
    }
    if (t == _i9.Like) {
      return _i9.Like.fromJson(data) as T;
    }
    if (t == _i10.Notification) {
      return _i10.Notification.fromJson(data) as T;
    }
    if (t == _i11.Poll) {
      return _i11.Poll.fromJson(data) as T;
    }
    if (t == _i12.PollOption) {
      return _i12.PollOption.fromJson(data) as T;
    }
    if (t == _i13.PollVote) {
      return _i13.PollVote.fromJson(data) as T;
    }
    if (t == _i14.Post) {
      return _i14.Post.fromJson(data) as T;
    }
    if (t == _i15.PostPeopleTagged) {
      return _i15.PostPeopleTagged.fromJson(data) as T;
    }
    if (t == _i16.PostReport) {
      return _i16.PostReport.fromJson(data) as T;
    }
    if (t == _i17.PostTag) {
      return _i17.PostTag.fromJson(data) as T;
    }
    if (t == _i18.PostViewCount) {
      return _i18.PostViewCount.fromJson(data) as T;
    }
    if (t == _i19.ReplyComment) {
      return _i19.ReplyComment.fromJson(data) as T;
    }
    if (t == _i20.SavedPost) {
      return _i20.SavedPost.fromJson(data) as T;
    }
    if (t == _i21.Story) {
      return _i21.Story.fromJson(data) as T;
    }
    if (t == _i22.StoryViewCount) {
      return _i22.StoryViewCount.fromJson(data) as T;
    }
    if (t == _i23.Tag) {
      return _i23.Tag.fromJson(data) as T;
    }
    if (t == _i24.User) {
      return _i24.User.fromJson(data) as T;
    }
    if (t == _i25.UserProfile) {
      return _i25.UserProfile.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.ChatMessage?>()) {
      return (data != null ? _i2.ChatMessage.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.City?>()) {
      return (data != null ? _i3.City.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.CommentReport?>()) {
      return (data != null ? _i4.CommentReport.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Comment?>()) {
      return (data != null ? _i5.Comment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.Contact?>()) {
      return (data != null ? _i6.Contact.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.Follow?>()) {
      return (data != null ? _i7.Follow.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.LikeComment?>()) {
      return (data != null ? _i8.LikeComment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i9.Like?>()) {
      return (data != null ? _i9.Like.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i10.Notification?>()) {
      return (data != null ? _i10.Notification.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i11.Poll?>()) {
      return (data != null ? _i11.Poll.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i12.PollOption?>()) {
      return (data != null ? _i12.PollOption.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i13.PollVote?>()) {
      return (data != null ? _i13.PollVote.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i14.Post?>()) {
      return (data != null ? _i14.Post.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i15.PostPeopleTagged?>()) {
      return (data != null ? _i15.PostPeopleTagged.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i16.PostReport?>()) {
      return (data != null ? _i16.PostReport.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i17.PostTag?>()) {
      return (data != null ? _i17.PostTag.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i18.PostViewCount?>()) {
      return (data != null ? _i18.PostViewCount.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i19.ReplyComment?>()) {
      return (data != null ? _i19.ReplyComment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i20.SavedPost?>()) {
      return (data != null ? _i20.SavedPost.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i21.Story?>()) {
      return (data != null ? _i21.Story.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i22.StoryViewCount?>()) {
      return (data != null ? _i22.StoryViewCount.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i23.Tag?>()) {
      return (data != null ? _i23.Tag.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i24.User?>()) {
      return (data != null ? _i24.User.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i25.UserProfile?>()) {
      return (data != null ? _i25.UserProfile.fromJson(data) : null) as T;
    }
    if (t == Map<String, dynamic>) {
      return (data as Map).map(
            (k, v) => MapEntry(deserialize<String>(k), deserialize<dynamic>(v)),
          )
          as T;
    }
    if (t == List<_i26.User>) {
      return (data as List).map((e) => deserialize<_i26.User>(e)).toList() as T;
    }
    try {
      return _i27.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i2.ChatMessage => 'ChatMessage',
      _i3.City => 'City',
      _i4.CommentReport => 'CommentReport',
      _i5.Comment => 'Comment',
      _i6.Contact => 'Contact',
      _i7.Follow => 'Follow',
      _i8.LikeComment => 'LikeComment',
      _i9.Like => 'Like',
      _i10.Notification => 'Notification',
      _i11.Poll => 'Poll',
      _i12.PollOption => 'PollOption',
      _i13.PollVote => 'PollVote',
      _i14.Post => 'Post',
      _i15.PostPeopleTagged => 'PostPeopleTagged',
      _i16.PostReport => 'PostReport',
      _i17.PostTag => 'PostTag',
      _i18.PostViewCount => 'PostViewCount',
      _i19.ReplyComment => 'ReplyComment',
      _i20.SavedPost => 'SavedPost',
      _i21.Story => 'Story',
      _i22.StoryViewCount => 'StoryViewCount',
      _i23.Tag => 'Tag',
      _i24.User => 'User',
      _i25.UserProfile => 'UserProfile',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst(
        'social_serverpod.',
        '',
      );
    }

    switch (data) {
      case _i2.ChatMessage():
        return 'ChatMessage';
      case _i3.City():
        return 'City';
      case _i4.CommentReport():
        return 'CommentReport';
      case _i5.Comment():
        return 'Comment';
      case _i6.Contact():
        return 'Contact';
      case _i7.Follow():
        return 'Follow';
      case _i8.LikeComment():
        return 'LikeComment';
      case _i9.Like():
        return 'Like';
      case _i10.Notification():
        return 'Notification';
      case _i11.Poll():
        return 'Poll';
      case _i12.PollOption():
        return 'PollOption';
      case _i13.PollVote():
        return 'PollVote';
      case _i14.Post():
        return 'Post';
      case _i15.PostPeopleTagged():
        return 'PostPeopleTagged';
      case _i16.PostReport():
        return 'PostReport';
      case _i17.PostTag():
        return 'PostTag';
      case _i18.PostViewCount():
        return 'PostViewCount';
      case _i19.ReplyComment():
        return 'ReplyComment';
      case _i20.SavedPost():
        return 'SavedPost';
      case _i21.Story():
        return 'Story';
      case _i22.StoryViewCount():
        return 'StoryViewCount';
      case _i23.Tag():
        return 'Tag';
      case _i24.User():
        return 'User';
      case _i25.UserProfile():
        return 'UserProfile';
    }
    className = _i27.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'ChatMessage') {
      return deserialize<_i2.ChatMessage>(data['data']);
    }
    if (dataClassName == 'City') {
      return deserialize<_i3.City>(data['data']);
    }
    if (dataClassName == 'CommentReport') {
      return deserialize<_i4.CommentReport>(data['data']);
    }
    if (dataClassName == 'Comment') {
      return deserialize<_i5.Comment>(data['data']);
    }
    if (dataClassName == 'Contact') {
      return deserialize<_i6.Contact>(data['data']);
    }
    if (dataClassName == 'Follow') {
      return deserialize<_i7.Follow>(data['data']);
    }
    if (dataClassName == 'LikeComment') {
      return deserialize<_i8.LikeComment>(data['data']);
    }
    if (dataClassName == 'Like') {
      return deserialize<_i9.Like>(data['data']);
    }
    if (dataClassName == 'Notification') {
      return deserialize<_i10.Notification>(data['data']);
    }
    if (dataClassName == 'Poll') {
      return deserialize<_i11.Poll>(data['data']);
    }
    if (dataClassName == 'PollOption') {
      return deserialize<_i12.PollOption>(data['data']);
    }
    if (dataClassName == 'PollVote') {
      return deserialize<_i13.PollVote>(data['data']);
    }
    if (dataClassName == 'Post') {
      return deserialize<_i14.Post>(data['data']);
    }
    if (dataClassName == 'PostPeopleTagged') {
      return deserialize<_i15.PostPeopleTagged>(data['data']);
    }
    if (dataClassName == 'PostReport') {
      return deserialize<_i16.PostReport>(data['data']);
    }
    if (dataClassName == 'PostTag') {
      return deserialize<_i17.PostTag>(data['data']);
    }
    if (dataClassName == 'PostViewCount') {
      return deserialize<_i18.PostViewCount>(data['data']);
    }
    if (dataClassName == 'ReplyComment') {
      return deserialize<_i19.ReplyComment>(data['data']);
    }
    if (dataClassName == 'SavedPost') {
      return deserialize<_i20.SavedPost>(data['data']);
    }
    if (dataClassName == 'Story') {
      return deserialize<_i21.Story>(data['data']);
    }
    if (dataClassName == 'StoryViewCount') {
      return deserialize<_i22.StoryViewCount>(data['data']);
    }
    if (dataClassName == 'Tag') {
      return deserialize<_i23.Tag>(data['data']);
    }
    if (dataClassName == 'User') {
      return deserialize<_i24.User>(data['data']);
    }
    if (dataClassName == 'UserProfile') {
      return deserialize<_i25.UserProfile>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth.')) {
      data['className'] = dataClassName.substring(15);
      return _i27.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    try {
      return _i27.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
