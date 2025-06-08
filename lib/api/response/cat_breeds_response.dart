import 'package:cat_breeds_app/features/cat_breeds/model/cat_breed.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'cat_breeds_response.freezed.dart';
part 'cat_breeds_response.g.dart';

@freezed
abstract class CatBreedsResponse with _$CatBreedsResponse {
  const factory CatBreedsResponse({
    required List<CatBreed> data,
  }) = _CatBreedsResponse;

  factory CatBreedsResponse.fromJson(Map<String, Object?> json) => 
      _$CatBreedsResponseFromJson(json);
}
