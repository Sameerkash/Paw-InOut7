// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pet _$_$_PetFromJson(Map<String, dynamic> json) {
  return _$_Pet(
    petId: json['petId'] as String,
    petName: json['petName'] as String,
    userId: json['userId'] as String,
    age: json['age'] as String,
    weight: json['weight'] as String,
    petType: json['petType'] == null
        ? null
        : PetCategory.fromJson(json['petType'] as Map<String, dynamic>),
    breed: json['breed'] == null
        ? null
        : PetBreed.fromJson(json['breed'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PetToJson(_$_Pet instance) => <String, dynamic>{
      'petId': instance.petId,
      'petName': instance.petName,
      'userId': instance.userId,
      'age': instance.age,
      'weight': instance.weight,
      'petType': instance.petType?.toJson(),
      'breed': instance.breed?.toJson(),
    };

_$_PetCategory _$_$_PetCategoryFromJson(Map<String, dynamic> json) {
  return _$_PetCategory(
    petCategoryId: json['petCategoryId'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_PetCategoryToJson(_$_PetCategory instance) =>
    <String, dynamic>{
      'petCategoryId': instance.petCategoryId,
      'name': instance.name,
    };

_$_PetBreed _$_$_PetBreedFromJson(Map<String, dynamic> json) {
  return _$_PetBreed(
    breedId: json['breedId'] as String,
    petCategoryId: json['petCategoryId'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_PetBreedToJson(_$_PetBreed instance) =>
    <String, dynamic>{
      'breedId': instance.breedId,
      'petCategoryId': instance.petCategoryId,
      'name': instance.name,
    };
