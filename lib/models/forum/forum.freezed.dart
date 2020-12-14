// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'forum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
class _$PostTearOff {
  const _$PostTearOff();

// ignore: unused_element
  _Post call(
      {String userId,
      String userName,
      String postId,
      String title,
      String body,
      @TimestampConvertDatetime() DateTime timestamp,
      String imaga,
      List<String> tags,
      PetCategory petCategory,
      PetBreed petBreed}) {
    return _Post(
      userId: userId,
      userName: userName,
      postId: postId,
      title: title,
      body: body,
      timestamp: timestamp,
      imaga: imaga,
      tags: tags,
      petCategory: petCategory,
      petBreed: petBreed,
    );
  }

// ignore: unused_element
  Post fromJson(Map<String, Object> json) {
    return Post.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Post = _$PostTearOff();

/// @nodoc
mixin _$Post {
  String get userId;
  String get userName;
  String get postId;
  String get title;
  String get body;
  @TimestampConvertDatetime()
  DateTime get timestamp;
  String get imaga;
  List<String> get tags;
  PetCategory get petCategory;
  PetBreed get petBreed;

  Map<String, dynamic> toJson();
  $PostCopyWith<Post> get copyWith;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {String userId,
      String userName,
      String postId,
      String title,
      String body,
      @TimestampConvertDatetime() DateTime timestamp,
      String imaga,
      List<String> tags,
      PetCategory petCategory,
      PetBreed petBreed});

  $PetCategoryCopyWith<$Res> get petCategory;
  $PetBreedCopyWith<$Res> get petBreed;
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object userId = freezed,
    Object userName = freezed,
    Object postId = freezed,
    Object title = freezed,
    Object body = freezed,
    Object timestamp = freezed,
    Object imaga = freezed,
    Object tags = freezed,
    Object petCategory = freezed,
    Object petBreed = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
      userName: userName == freezed ? _value.userName : userName as String,
      postId: postId == freezed ? _value.postId : postId as String,
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
      timestamp:
          timestamp == freezed ? _value.timestamp : timestamp as DateTime,
      imaga: imaga == freezed ? _value.imaga : imaga as String,
      tags: tags == freezed ? _value.tags : tags as List<String>,
      petCategory: petCategory == freezed
          ? _value.petCategory
          : petCategory as PetCategory,
      petBreed: petBreed == freezed ? _value.petBreed : petBreed as PetBreed,
    ));
  }

  @override
  $PetCategoryCopyWith<$Res> get petCategory {
    if (_value.petCategory == null) {
      return null;
    }
    return $PetCategoryCopyWith<$Res>(_value.petCategory, (value) {
      return _then(_value.copyWith(petCategory: value));
    });
  }

  @override
  $PetBreedCopyWith<$Res> get petBreed {
    if (_value.petBreed == null) {
      return null;
    }
    return $PetBreedCopyWith<$Res>(_value.petBreed, (value) {
      return _then(_value.copyWith(petBreed: value));
    });
  }
}

/// @nodoc
abstract class _$PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$PostCopyWith(_Post value, $Res Function(_Post) then) =
      __$PostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userId,
      String userName,
      String postId,
      String title,
      String body,
      @TimestampConvertDatetime() DateTime timestamp,
      String imaga,
      List<String> tags,
      PetCategory petCategory,
      PetBreed petBreed});

  @override
  $PetCategoryCopyWith<$Res> get petCategory;
  @override
  $PetBreedCopyWith<$Res> get petBreed;
}

/// @nodoc
class __$PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$PostCopyWith<$Res> {
  __$PostCopyWithImpl(_Post _value, $Res Function(_Post) _then)
      : super(_value, (v) => _then(v as _Post));

  @override
  _Post get _value => super._value as _Post;

  @override
  $Res call({
    Object userId = freezed,
    Object userName = freezed,
    Object postId = freezed,
    Object title = freezed,
    Object body = freezed,
    Object timestamp = freezed,
    Object imaga = freezed,
    Object tags = freezed,
    Object petCategory = freezed,
    Object petBreed = freezed,
  }) {
    return _then(_Post(
      userId: userId == freezed ? _value.userId : userId as String,
      userName: userName == freezed ? _value.userName : userName as String,
      postId: postId == freezed ? _value.postId : postId as String,
      title: title == freezed ? _value.title : title as String,
      body: body == freezed ? _value.body : body as String,
      timestamp:
          timestamp == freezed ? _value.timestamp : timestamp as DateTime,
      imaga: imaga == freezed ? _value.imaga : imaga as String,
      tags: tags == freezed ? _value.tags : tags as List<String>,
      petCategory: petCategory == freezed
          ? _value.petCategory
          : petCategory as PetCategory,
      petBreed: petBreed == freezed ? _value.petBreed : petBreed as PetBreed,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Post implements _Post {
  const _$_Post(
      {this.userId,
      this.userName,
      this.postId,
      this.title,
      this.body,
      @TimestampConvertDatetime() this.timestamp,
      this.imaga,
      this.tags,
      this.petCategory,
      this.petBreed});

  factory _$_Post.fromJson(Map<String, dynamic> json) =>
      _$_$_PostFromJson(json);

  @override
  final String userId;
  @override
  final String userName;
  @override
  final String postId;
  @override
  final String title;
  @override
  final String body;
  @override
  @TimestampConvertDatetime()
  final DateTime timestamp;
  @override
  final String imaga;
  @override
  final List<String> tags;
  @override
  final PetCategory petCategory;
  @override
  final PetBreed petBreed;

  @override
  String toString() {
    return 'Post(userId: $userId, userName: $userName, postId: $postId, title: $title, body: $body, timestamp: $timestamp, imaga: $imaga, tags: $tags, petCategory: $petCategory, petBreed: $petBreed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Post &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.imaga, imaga) ||
                const DeepCollectionEquality().equals(other.imaga, imaga)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.petCategory, petCategory) ||
                const DeepCollectionEquality()
                    .equals(other.petCategory, petCategory)) &&
            (identical(other.petBreed, petBreed) ||
                const DeepCollectionEquality()
                    .equals(other.petBreed, petBreed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(imaga) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(petCategory) ^
      const DeepCollectionEquality().hash(petBreed);

  @override
  _$PostCopyWith<_Post> get copyWith =>
      __$PostCopyWithImpl<_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PostToJson(this);
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {String userId,
      String userName,
      String postId,
      String title,
      String body,
      @TimestampConvertDatetime() DateTime timestamp,
      String imaga,
      List<String> tags,
      PetCategory petCategory,
      PetBreed petBreed}) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  String get userId;
  @override
  String get userName;
  @override
  String get postId;
  @override
  String get title;
  @override
  String get body;
  @override
  @TimestampConvertDatetime()
  DateTime get timestamp;
  @override
  String get imaga;
  @override
  List<String> get tags;
  @override
  PetCategory get petCategory;
  @override
  PetBreed get petBreed;
  @override
  _$PostCopyWith<_Post> get copyWith;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
class _$CommentTearOff {
  const _$CommentTearOff();

// ignore: unused_element
  _Comment call(
      {String postId,
      String commentId,
      String userId,
      String userName,
      String body,
      @TimestampConvertDatetime() DateTime timeStamp}) {
    return _Comment(
      postId: postId,
      commentId: commentId,
      userId: userId,
      userName: userName,
      body: body,
      timeStamp: timeStamp,
    );
  }

// ignore: unused_element
  Comment fromJson(Map<String, Object> json) {
    return Comment.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Comment = _$CommentTearOff();

/// @nodoc
mixin _$Comment {
  String get postId;
  String get commentId;
  String get userId;
  String get userName;
  String get body;
  @TimestampConvertDatetime()
  DateTime get timeStamp;

  Map<String, dynamic> toJson();
  $CommentCopyWith<Comment> get copyWith;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res>;
  $Res call(
      {String postId,
      String commentId,
      String userId,
      String userName,
      String body,
      @TimestampConvertDatetime() DateTime timeStamp});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res> implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  final Comment _value;
  // ignore: unused_field
  final $Res Function(Comment) _then;

  @override
  $Res call({
    Object postId = freezed,
    Object commentId = freezed,
    Object userId = freezed,
    Object userName = freezed,
    Object body = freezed,
    Object timeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      postId: postId == freezed ? _value.postId : postId as String,
      commentId: commentId == freezed ? _value.commentId : commentId as String,
      userId: userId == freezed ? _value.userId : userId as String,
      userName: userName == freezed ? _value.userName : userName as String,
      body: body == freezed ? _value.body : body as String,
      timeStamp:
          timeStamp == freezed ? _value.timeStamp : timeStamp as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$CommentCopyWith(_Comment value, $Res Function(_Comment) then) =
      __$CommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String postId,
      String commentId,
      String userId,
      String userName,
      String body,
      @TimestampConvertDatetime() DateTime timeStamp});
}

/// @nodoc
class __$CommentCopyWithImpl<$Res> extends _$CommentCopyWithImpl<$Res>
    implements _$CommentCopyWith<$Res> {
  __$CommentCopyWithImpl(_Comment _value, $Res Function(_Comment) _then)
      : super(_value, (v) => _then(v as _Comment));

  @override
  _Comment get _value => super._value as _Comment;

  @override
  $Res call({
    Object postId = freezed,
    Object commentId = freezed,
    Object userId = freezed,
    Object userName = freezed,
    Object body = freezed,
    Object timeStamp = freezed,
  }) {
    return _then(_Comment(
      postId: postId == freezed ? _value.postId : postId as String,
      commentId: commentId == freezed ? _value.commentId : commentId as String,
      userId: userId == freezed ? _value.userId : userId as String,
      userName: userName == freezed ? _value.userName : userName as String,
      body: body == freezed ? _value.body : body as String,
      timeStamp:
          timeStamp == freezed ? _value.timeStamp : timeStamp as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Comment implements _Comment {
  const _$_Comment(
      {this.postId,
      this.commentId,
      this.userId,
      this.userName,
      this.body,
      @TimestampConvertDatetime() this.timeStamp});

  factory _$_Comment.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentFromJson(json);

  @override
  final String postId;
  @override
  final String commentId;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String body;
  @override
  @TimestampConvertDatetime()
  final DateTime timeStamp;

  @override
  String toString() {
    return 'Comment(postId: $postId, commentId: $commentId, userId: $userId, userName: $userName, body: $body, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Comment &&
            (identical(other.postId, postId) ||
                const DeepCollectionEquality().equals(other.postId, postId)) &&
            (identical(other.commentId, commentId) ||
                const DeepCollectionEquality()
                    .equals(other.commentId, commentId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.timeStamp, timeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.timeStamp, timeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(postId) ^
      const DeepCollectionEquality().hash(commentId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(timeStamp);

  @override
  _$CommentCopyWith<_Comment> get copyWith =>
      __$CommentCopyWithImpl<_Comment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentToJson(this);
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {String postId,
      String commentId,
      String userId,
      String userName,
      String body,
      @TimestampConvertDatetime() DateTime timeStamp}) = _$_Comment;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$_Comment.fromJson;

  @override
  String get postId;
  @override
  String get commentId;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String get body;
  @override
  @TimestampConvertDatetime()
  DateTime get timeStamp;
  @override
  _$CommentCopyWith<_Comment> get copyWith;
}
