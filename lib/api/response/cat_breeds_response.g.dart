// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_breeds_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatBreedsResponse _$CatBreedsResponseFromJson(Map<String, dynamic> json) =>
    _CatBreedsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => CatBreed.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatBreedsResponseToJson(_CatBreedsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
