import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_breed.freezed.dart';
part 'cat_breed.g.dart';

@freezed
abstract class CatBreed with _$CatBreed {
  const factory CatBreed({
    required String breed,
    required String country,
    required String origin,
    required String coat,
    required String pattern,
  }) = _CatBreed;

  factory CatBreed.fromJson(Map<String, dynamic> json) =>
      _$CatBreedFromJson(json);
}
