import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../pet/pet.dart';

part 'forum.freezed.dart';
part 'forum.g.dart';

@freezed

/// [Post] data class

abstract class Post with _$Post {
  const factory Post({
    String userId,
    String userName,
    String postId,
    String title,
    String body,
    @TimestampConvertDatetime() DateTime timestamp,
    String imaga,
    List<String> tags,
    PetCategory petCategory,
    PetBreed petBreed,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$_$_PostToJson(this);
}

@freezed

/// [Comment] data class

abstract class Comment with _$Comment {
  const factory Comment({
    String postId,
    String commentId,
    String userId,
    String userName,
    String body,
    @TimestampConvertDatetime() DateTime timeStamp,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  Map<String, dynamic> toJson() => _$_$_CommentToJson(this);
}

class TimestampConvertDatetime implements JsonConverter<DateTime, Timestamp> {
  const TimestampConvertDatetime();
  @override
  DateTime fromJson(Timestamp json) {
    return json.toDate();
  }

  @override
  Timestamp toJson(DateTime object) {
    return Timestamp.fromDate(object);
  }
}
