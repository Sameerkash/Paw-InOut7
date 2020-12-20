import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petme/models/pet/pet.dart';
part 'adoption.freezed.dart';
part 'adoption.g.dart';

@freezed
abstract class Adoption with _$Adoption {
  const factory Adoption({
    Pet pet,
    String description,
    String userName,
    String userId,
    String userImageUrl,
    @JsonKey(ignore: true) distance,
  }) = _Adoption;

  factory Adoption.fromJson(Map<String, dynamic> json) =>
      _$AdoptionFromJson(json);

  Map<String, dynamic> toJson() => _$_$_AdoptionToJson(this);
}
