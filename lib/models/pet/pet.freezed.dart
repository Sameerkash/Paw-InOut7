// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Pet _$PetFromJson(Map<String, dynamic> json) {
  return _Pet.fromJson(json);
}

/// @nodoc
class _$PetTearOff {
  const _$PetTearOff();

// ignore: unused_element
  _Pet call(
      {String petId,
      String petName,
      String userId,
      String imageUrl,
      String age,
      String weight,
      String gender,
      PetCategory petType,
      PetBreed breed}) {
    return _Pet(
      petId: petId,
      petName: petName,
      userId: userId,
      imageUrl: imageUrl,
      age: age,
      weight: weight,
      gender: gender,
      petType: petType,
      breed: breed,
    );
  }

// ignore: unused_element
  Pet fromJson(Map<String, Object> json) {
    return Pet.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Pet = _$PetTearOff();

/// @nodoc
mixin _$Pet {
  String get petId;
  String get petName;
  String get userId;
  String get imageUrl;
  String get age;
  String get weight;
  String get gender;
  PetCategory get petType;
  PetBreed get breed;

  Map<String, dynamic> toJson();
  $PetCopyWith<Pet> get copyWith;
}

/// @nodoc
abstract class $PetCopyWith<$Res> {
  factory $PetCopyWith(Pet value, $Res Function(Pet) then) =
      _$PetCopyWithImpl<$Res>;
  $Res call(
      {String petId,
      String petName,
      String userId,
      String imageUrl,
      String age,
      String weight,
      String gender,
      PetCategory petType,
      PetBreed breed});

  $PetCategoryCopyWith<$Res> get petType;
  $PetBreedCopyWith<$Res> get breed;
}

/// @nodoc
class _$PetCopyWithImpl<$Res> implements $PetCopyWith<$Res> {
  _$PetCopyWithImpl(this._value, this._then);

  final Pet _value;
  // ignore: unused_field
  final $Res Function(Pet) _then;

  @override
  $Res call({
    Object petId = freezed,
    Object petName = freezed,
    Object userId = freezed,
    Object imageUrl = freezed,
    Object age = freezed,
    Object weight = freezed,
    Object gender = freezed,
    Object petType = freezed,
    Object breed = freezed,
  }) {
    return _then(_value.copyWith(
      petId: petId == freezed ? _value.petId : petId as String,
      petName: petName == freezed ? _value.petName : petName as String,
      userId: userId == freezed ? _value.userId : userId as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      age: age == freezed ? _value.age : age as String,
      weight: weight == freezed ? _value.weight : weight as String,
      gender: gender == freezed ? _value.gender : gender as String,
      petType: petType == freezed ? _value.petType : petType as PetCategory,
      breed: breed == freezed ? _value.breed : breed as PetBreed,
    ));
  }

  @override
  $PetCategoryCopyWith<$Res> get petType {
    if (_value.petType == null) {
      return null;
    }
    return $PetCategoryCopyWith<$Res>(_value.petType, (value) {
      return _then(_value.copyWith(petType: value));
    });
  }

  @override
  $PetBreedCopyWith<$Res> get breed {
    if (_value.breed == null) {
      return null;
    }
    return $PetBreedCopyWith<$Res>(_value.breed, (value) {
      return _then(_value.copyWith(breed: value));
    });
  }
}

/// @nodoc
abstract class _$PetCopyWith<$Res> implements $PetCopyWith<$Res> {
  factory _$PetCopyWith(_Pet value, $Res Function(_Pet) then) =
      __$PetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String petId,
      String petName,
      String userId,
      String imageUrl,
      String age,
      String weight,
      String gender,
      PetCategory petType,
      PetBreed breed});

  @override
  $PetCategoryCopyWith<$Res> get petType;
  @override
  $PetBreedCopyWith<$Res> get breed;
}

/// @nodoc
class __$PetCopyWithImpl<$Res> extends _$PetCopyWithImpl<$Res>
    implements _$PetCopyWith<$Res> {
  __$PetCopyWithImpl(_Pet _value, $Res Function(_Pet) _then)
      : super(_value, (v) => _then(v as _Pet));

  @override
  _Pet get _value => super._value as _Pet;

  @override
  $Res call({
    Object petId = freezed,
    Object petName = freezed,
    Object userId = freezed,
    Object imageUrl = freezed,
    Object age = freezed,
    Object weight = freezed,
    Object gender = freezed,
    Object petType = freezed,
    Object breed = freezed,
  }) {
    return _then(_Pet(
      petId: petId == freezed ? _value.petId : petId as String,
      petName: petName == freezed ? _value.petName : petName as String,
      userId: userId == freezed ? _value.userId : userId as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      age: age == freezed ? _value.age : age as String,
      weight: weight == freezed ? _value.weight : weight as String,
      gender: gender == freezed ? _value.gender : gender as String,
      petType: petType == freezed ? _value.petType : petType as PetCategory,
      breed: breed == freezed ? _value.breed : breed as PetBreed,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Pet implements _Pet {
  const _$_Pet(
      {this.petId,
      this.petName,
      this.userId,
      this.imageUrl,
      this.age,
      this.weight,
      this.gender,
      this.petType,
      this.breed});

  factory _$_Pet.fromJson(Map<String, dynamic> json) => _$_$_PetFromJson(json);

  @override
  final String petId;
  @override
  final String petName;
  @override
  final String userId;
  @override
  final String imageUrl;
  @override
  final String age;
  @override
  final String weight;
  @override
  final String gender;
  @override
  final PetCategory petType;
  @override
  final PetBreed breed;

  @override
  String toString() {
    return 'Pet(petId: $petId, petName: $petName, userId: $userId, imageUrl: $imageUrl, age: $age, weight: $weight, gender: $gender, petType: $petType, breed: $breed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pet &&
            (identical(other.petId, petId) ||
                const DeepCollectionEquality().equals(other.petId, petId)) &&
            (identical(other.petName, petName) ||
                const DeepCollectionEquality()
                    .equals(other.petName, petName)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.petType, petType) ||
                const DeepCollectionEquality()
                    .equals(other.petType, petType)) &&
            (identical(other.breed, breed) ||
                const DeepCollectionEquality().equals(other.breed, breed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(petId) ^
      const DeepCollectionEquality().hash(petName) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(petType) ^
      const DeepCollectionEquality().hash(breed);

  @override
  _$PetCopyWith<_Pet> get copyWith =>
      __$PetCopyWithImpl<_Pet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PetToJson(this);
  }
}

abstract class _Pet implements Pet {
  const factory _Pet(
      {String petId,
      String petName,
      String userId,
      String imageUrl,
      String age,
      String weight,
      String gender,
      PetCategory petType,
      PetBreed breed}) = _$_Pet;

  factory _Pet.fromJson(Map<String, dynamic> json) = _$_Pet.fromJson;

  @override
  String get petId;
  @override
  String get petName;
  @override
  String get userId;
  @override
  String get imageUrl;
  @override
  String get age;
  @override
  String get weight;
  @override
  String get gender;
  @override
  PetCategory get petType;
  @override
  PetBreed get breed;
  @override
  _$PetCopyWith<_Pet> get copyWith;
}

PetCategory _$PetCategoryFromJson(Map<String, dynamic> json) {
  return _PetCategory.fromJson(json);
}

/// @nodoc
class _$PetCategoryTearOff {
  const _$PetCategoryTearOff();

// ignore: unused_element
  _PetCategory call({String petCategoryId, String name}) {
    return _PetCategory(
      petCategoryId: petCategoryId,
      name: name,
    );
  }

// ignore: unused_element
  PetCategory fromJson(Map<String, Object> json) {
    return PetCategory.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PetCategory = _$PetCategoryTearOff();

/// @nodoc
mixin _$PetCategory {
  String get petCategoryId;
  String get name;

  Map<String, dynamic> toJson();
  $PetCategoryCopyWith<PetCategory> get copyWith;
}

/// @nodoc
abstract class $PetCategoryCopyWith<$Res> {
  factory $PetCategoryCopyWith(
          PetCategory value, $Res Function(PetCategory) then) =
      _$PetCategoryCopyWithImpl<$Res>;
  $Res call({String petCategoryId, String name});
}

/// @nodoc
class _$PetCategoryCopyWithImpl<$Res> implements $PetCategoryCopyWith<$Res> {
  _$PetCategoryCopyWithImpl(this._value, this._then);

  final PetCategory _value;
  // ignore: unused_field
  final $Res Function(PetCategory) _then;

  @override
  $Res call({
    Object petCategoryId = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      petCategoryId: petCategoryId == freezed
          ? _value.petCategoryId
          : petCategoryId as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$PetCategoryCopyWith<$Res>
    implements $PetCategoryCopyWith<$Res> {
  factory _$PetCategoryCopyWith(
          _PetCategory value, $Res Function(_PetCategory) then) =
      __$PetCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String petCategoryId, String name});
}

/// @nodoc
class __$PetCategoryCopyWithImpl<$Res> extends _$PetCategoryCopyWithImpl<$Res>
    implements _$PetCategoryCopyWith<$Res> {
  __$PetCategoryCopyWithImpl(
      _PetCategory _value, $Res Function(_PetCategory) _then)
      : super(_value, (v) => _then(v as _PetCategory));

  @override
  _PetCategory get _value => super._value as _PetCategory;

  @override
  $Res call({
    Object petCategoryId = freezed,
    Object name = freezed,
  }) {
    return _then(_PetCategory(
      petCategoryId: petCategoryId == freezed
          ? _value.petCategoryId
          : petCategoryId as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PetCategory implements _PetCategory {
  const _$_PetCategory({this.petCategoryId, this.name});

  factory _$_PetCategory.fromJson(Map<String, dynamic> json) =>
      _$_$_PetCategoryFromJson(json);

  @override
  final String petCategoryId;
  @override
  final String name;

  @override
  String toString() {
    return 'PetCategory(petCategoryId: $petCategoryId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PetCategory &&
            (identical(other.petCategoryId, petCategoryId) ||
                const DeepCollectionEquality()
                    .equals(other.petCategoryId, petCategoryId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(petCategoryId) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$PetCategoryCopyWith<_PetCategory> get copyWith =>
      __$PetCategoryCopyWithImpl<_PetCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PetCategoryToJson(this);
  }
}

abstract class _PetCategory implements PetCategory {
  const factory _PetCategory({String petCategoryId, String name}) =
      _$_PetCategory;

  factory _PetCategory.fromJson(Map<String, dynamic> json) =
      _$_PetCategory.fromJson;

  @override
  String get petCategoryId;
  @override
  String get name;
  @override
  _$PetCategoryCopyWith<_PetCategory> get copyWith;
}

PetBreed _$PetBreedFromJson(Map<String, dynamic> json) {
  return _PetBreed.fromJson(json);
}

/// @nodoc
class _$PetBreedTearOff {
  const _$PetBreedTearOff();

// ignore: unused_element
  _PetBreed call({String breedId, String petCategoryId, String name}) {
    return _PetBreed(
      breedId: breedId,
      petCategoryId: petCategoryId,
      name: name,
    );
  }

// ignore: unused_element
  PetBreed fromJson(Map<String, Object> json) {
    return PetBreed.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PetBreed = _$PetBreedTearOff();

/// @nodoc
mixin _$PetBreed {
  String get breedId;
  String get petCategoryId;
  String get name;

  Map<String, dynamic> toJson();
  $PetBreedCopyWith<PetBreed> get copyWith;
}

/// @nodoc
abstract class $PetBreedCopyWith<$Res> {
  factory $PetBreedCopyWith(PetBreed value, $Res Function(PetBreed) then) =
      _$PetBreedCopyWithImpl<$Res>;
  $Res call({String breedId, String petCategoryId, String name});
}

/// @nodoc
class _$PetBreedCopyWithImpl<$Res> implements $PetBreedCopyWith<$Res> {
  _$PetBreedCopyWithImpl(this._value, this._then);

  final PetBreed _value;
  // ignore: unused_field
  final $Res Function(PetBreed) _then;

  @override
  $Res call({
    Object breedId = freezed,
    Object petCategoryId = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      breedId: breedId == freezed ? _value.breedId : breedId as String,
      petCategoryId: petCategoryId == freezed
          ? _value.petCategoryId
          : petCategoryId as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$PetBreedCopyWith<$Res> implements $PetBreedCopyWith<$Res> {
  factory _$PetBreedCopyWith(_PetBreed value, $Res Function(_PetBreed) then) =
      __$PetBreedCopyWithImpl<$Res>;
  @override
  $Res call({String breedId, String petCategoryId, String name});
}

/// @nodoc
class __$PetBreedCopyWithImpl<$Res> extends _$PetBreedCopyWithImpl<$Res>
    implements _$PetBreedCopyWith<$Res> {
  __$PetBreedCopyWithImpl(_PetBreed _value, $Res Function(_PetBreed) _then)
      : super(_value, (v) => _then(v as _PetBreed));

  @override
  _PetBreed get _value => super._value as _PetBreed;

  @override
  $Res call({
    Object breedId = freezed,
    Object petCategoryId = freezed,
    Object name = freezed,
  }) {
    return _then(_PetBreed(
      breedId: breedId == freezed ? _value.breedId : breedId as String,
      petCategoryId: petCategoryId == freezed
          ? _value.petCategoryId
          : petCategoryId as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PetBreed implements _PetBreed {
  const _$_PetBreed({this.breedId, this.petCategoryId, this.name});

  factory _$_PetBreed.fromJson(Map<String, dynamic> json) =>
      _$_$_PetBreedFromJson(json);

  @override
  final String breedId;
  @override
  final String petCategoryId;
  @override
  final String name;

  @override
  String toString() {
    return 'PetBreed(breedId: $breedId, petCategoryId: $petCategoryId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PetBreed &&
            (identical(other.breedId, breedId) ||
                const DeepCollectionEquality()
                    .equals(other.breedId, breedId)) &&
            (identical(other.petCategoryId, petCategoryId) ||
                const DeepCollectionEquality()
                    .equals(other.petCategoryId, petCategoryId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(breedId) ^
      const DeepCollectionEquality().hash(petCategoryId) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$PetBreedCopyWith<_PetBreed> get copyWith =>
      __$PetBreedCopyWithImpl<_PetBreed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PetBreedToJson(this);
  }
}

abstract class _PetBreed implements PetBreed {
  const factory _PetBreed({String breedId, String petCategoryId, String name}) =
      _$_PetBreed;

  factory _PetBreed.fromJson(Map<String, dynamic> json) = _$_PetBreed.fromJson;

  @override
  String get breedId;
  @override
  String get petCategoryId;
  @override
  String get name;
  @override
  _$PetBreedCopyWith<_PetBreed> get copyWith;
}
