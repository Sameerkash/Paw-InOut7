// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'adoption.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Adoption _$AdoptionFromJson(Map<String, dynamic> json) {
  return _Adoption.fromJson(json);
}

/// @nodoc
class _$AdoptionTearOff {
  const _$AdoptionTearOff();

// ignore: unused_element
  _Adoption call(
      {Pet pet,
      String description,
      String userName,
      String userId,
      String userImageUrl,
      @JsonKey(ignore: true) dynamic distance}) {
    return _Adoption(
      pet: pet,
      description: description,
      userName: userName,
      userId: userId,
      userImageUrl: userImageUrl,
      distance: distance,
    );
  }

// ignore: unused_element
  Adoption fromJson(Map<String, Object> json) {
    return Adoption.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Adoption = _$AdoptionTearOff();

/// @nodoc
mixin _$Adoption {
  Pet get pet;
  String get description;
  String get userName;
  String get userId;
  String get userImageUrl;
  @JsonKey(ignore: true)
  dynamic get distance;

  Map<String, dynamic> toJson();
  $AdoptionCopyWith<Adoption> get copyWith;
}

/// @nodoc
abstract class $AdoptionCopyWith<$Res> {
  factory $AdoptionCopyWith(Adoption value, $Res Function(Adoption) then) =
      _$AdoptionCopyWithImpl<$Res>;
  $Res call(
      {Pet pet,
      String description,
      String userName,
      String userId,
      String userImageUrl,
      @JsonKey(ignore: true) dynamic distance});

  $PetCopyWith<$Res> get pet;
}

/// @nodoc
class _$AdoptionCopyWithImpl<$Res> implements $AdoptionCopyWith<$Res> {
  _$AdoptionCopyWithImpl(this._value, this._then);

  final Adoption _value;
  // ignore: unused_field
  final $Res Function(Adoption) _then;

  @override
  $Res call({
    Object pet = freezed,
    Object description = freezed,
    Object userName = freezed,
    Object userId = freezed,
    Object userImageUrl = freezed,
    Object distance = freezed,
  }) {
    return _then(_value.copyWith(
      pet: pet == freezed ? _value.pet : pet as Pet,
      description:
          description == freezed ? _value.description : description as String,
      userName: userName == freezed ? _value.userName : userName as String,
      userId: userId == freezed ? _value.userId : userId as String,
      userImageUrl: userImageUrl == freezed
          ? _value.userImageUrl
          : userImageUrl as String,
      distance: distance == freezed ? _value.distance : distance as dynamic,
    ));
  }

  @override
  $PetCopyWith<$Res> get pet {
    if (_value.pet == null) {
      return null;
    }
    return $PetCopyWith<$Res>(_value.pet, (value) {
      return _then(_value.copyWith(pet: value));
    });
  }
}

/// @nodoc
abstract class _$AdoptionCopyWith<$Res> implements $AdoptionCopyWith<$Res> {
  factory _$AdoptionCopyWith(_Adoption value, $Res Function(_Adoption) then) =
      __$AdoptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {Pet pet,
      String description,
      String userName,
      String userId,
      String userImageUrl,
      @JsonKey(ignore: true) dynamic distance});

  @override
  $PetCopyWith<$Res> get pet;
}

/// @nodoc
class __$AdoptionCopyWithImpl<$Res> extends _$AdoptionCopyWithImpl<$Res>
    implements _$AdoptionCopyWith<$Res> {
  __$AdoptionCopyWithImpl(_Adoption _value, $Res Function(_Adoption) _then)
      : super(_value, (v) => _then(v as _Adoption));

  @override
  _Adoption get _value => super._value as _Adoption;

  @override
  $Res call({
    Object pet = freezed,
    Object description = freezed,
    Object userName = freezed,
    Object userId = freezed,
    Object userImageUrl = freezed,
    Object distance = freezed,
  }) {
    return _then(_Adoption(
      pet: pet == freezed ? _value.pet : pet as Pet,
      description:
          description == freezed ? _value.description : description as String,
      userName: userName == freezed ? _value.userName : userName as String,
      userId: userId == freezed ? _value.userId : userId as String,
      userImageUrl: userImageUrl == freezed
          ? _value.userImageUrl
          : userImageUrl as String,
      distance: distance == freezed ? _value.distance : distance,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Adoption implements _Adoption {
  const _$_Adoption(
      {this.pet,
      this.description,
      this.userName,
      this.userId,
      this.userImageUrl,
      @JsonKey(ignore: true) this.distance});

  factory _$_Adoption.fromJson(Map<String, dynamic> json) =>
      _$_$_AdoptionFromJson(json);

  @override
  final Pet pet;
  @override
  final String description;
  @override
  final String userName;
  @override
  final String userId;
  @override
  final String userImageUrl;
  @override
  @JsonKey(ignore: true)
  final dynamic distance;

  @override
  String toString() {
    return 'Adoption(pet: $pet, description: $description, userName: $userName, userId: $userId, userImageUrl: $userImageUrl, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Adoption &&
            (identical(other.pet, pet) ||
                const DeepCollectionEquality().equals(other.pet, pet)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userImageUrl, userImageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.userImageUrl, userImageUrl)) &&
            (identical(other.distance, distance) ||
                const DeepCollectionEquality()
                    .equals(other.distance, distance)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pet) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userImageUrl) ^
      const DeepCollectionEquality().hash(distance);

  @override
  _$AdoptionCopyWith<_Adoption> get copyWith =>
      __$AdoptionCopyWithImpl<_Adoption>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AdoptionToJson(this);
  }
}

abstract class _Adoption implements Adoption {
  const factory _Adoption(
      {Pet pet,
      String description,
      String userName,
      String userId,
      String userImageUrl,
      @JsonKey(ignore: true) dynamic distance}) = _$_Adoption;

  factory _Adoption.fromJson(Map<String, dynamic> json) = _$_Adoption.fromJson;

  @override
  Pet get pet;
  @override
  String get description;
  @override
  String get userName;
  @override
  String get userId;
  @override
  String get userImageUrl;
  @override
  @JsonKey(ignore: true)
  dynamic get distance;
  @override
  _$AdoptionCopyWith<_Adoption> get copyWith;
}
