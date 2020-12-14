import 'package:freezed_annotation/freezed_annotation.dart';
part 'pet.freezed.dart';
part 'pet.g.dart';

@freezed
abstract class Pet with _$Pet {
  const factory Pet({
    String petId,
    String petName,
    String userId,
    String age,
    String weight,
    PetCategory petType,
    PetBreed breed,
  }) = _Pet;

  factory Pet.fromJson(Map<String, dynamic> json) => _$PetFromJson(json);

  Map<String, dynamic> toJson() => _$_$_PetToJson(this);
}

@freezed
abstract class PetCategory with _$PetCategory {
  const factory PetCategory({
    String petCategoryId,
    String name,
  }) = _PetCategory;

  factory PetCategory.fromJson(Map<String, dynamic> json) =>
      _$PetCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$_$_PetCategoryToJson(this);
}

@freezed
abstract class PetBreed with _$PetBreed {
  const factory PetBreed({
    String breedId,
    String petCategoryId,
    String name,
  }) = _PetBreed;

  factory PetBreed.fromJson(Map<String, dynamic> json) =>
      _$PetBreedFromJson(json);

  Map<String, dynamic> toJson() => _$_$_PetBreedToJson(this);
}
