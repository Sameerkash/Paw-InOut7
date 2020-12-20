// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adoption.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Adoption _$_$_AdoptionFromJson(Map<String, dynamic> json) {
  return _$_Adoption(
    pet: json['pet'] == null
        ? null
        : Pet.fromJson(json['pet'] as Map<String, dynamic>),
    description: json['description'] as String,
    userName: json['userName'] as String,
    userId: json['userId'] as String,
    userImageUrl: json['userImageUrl'] as String,
  );
}

Map<String, dynamic> _$_$_AdoptionToJson(_$_Adoption instance) =>
    <String, dynamic>{
      'pet': instance.pet?.toJson(),
      'description': instance.description,
      'userName': instance.userName,
      'userId': instance.userId,
      'userImageUrl': instance.userImageUrl,
    };
