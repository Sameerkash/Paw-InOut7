// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$_$_PostFromJson(Map<String, dynamic> json) {
  return _$_Post(
    userId: json['userId'] as String,
    userName: json['userName'] as String,
    postId: json['postId'] as String,
    title: json['title'] as String,
    body: json['body'] as String,
    timestamp: const TimestampConvertDatetime()
        .fromJson(json['timestamp'] as Timestamp),
    imaga: json['imaga'] as String,
    tags: (json['tags'] as List)?.map((e) => e as String)?.toList(),
    petCategory: json['petCategory'] == null
        ? null
        : PetCategory.fromJson(json['petCategory'] as Map<String, dynamic>),
    petBreed: json['petBreed'] == null
        ? null
        : PetBreed.fromJson(json['petBreed'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PostToJson(_$_Post instance) => <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'postId': instance.postId,
      'title': instance.title,
      'body': instance.body,
      'timestamp': const TimestampConvertDatetime().toJson(instance.timestamp),
      'imaga': instance.imaga,
      'tags': instance.tags,
      'petCategory': instance.petCategory?.toJson(),
      'petBreed': instance.petBreed?.toJson(),
    };

_$_Comment _$_$_CommentFromJson(Map<String, dynamic> json) {
  return _$_Comment(
    postId: json['postId'] as String,
    commentId: json['commentId'] as String,
    userId: json['userId'] as String,
    userName: json['userName'] as String,
    body: json['body'] as String,
    timeStamp: const TimestampConvertDatetime()
        .fromJson(json['timeStamp'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'commentId': instance.commentId,
      'userId': instance.userId,
      'userName': instance.userName,
      'body': instance.body,
      'timeStamp': const TimestampConvertDatetime().toJson(instance.timeStamp),
    };
