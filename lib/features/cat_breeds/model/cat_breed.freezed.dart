// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_breed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatBreed {
  String get breed;
  String get country;
  String get origin;
  String get coat;
  String get pattern;

  /// Create a copy of CatBreed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CatBreedCopyWith<CatBreed> get copyWith =>
      _$CatBreedCopyWithImpl<CatBreed>(this as CatBreed, _$identity);

  /// Serializes this CatBreed to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatBreed &&
            (identical(other.breed, breed) || other.breed == breed) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.coat, coat) || other.coat == coat) &&
            (identical(other.pattern, pattern) || other.pattern == pattern));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, breed, country, origin, coat, pattern);

  @override
  String toString() {
    return 'CatBreed(breed: $breed, country: $country, origin: $origin, coat: $coat, pattern: $pattern)';
  }
}

/// @nodoc
abstract mixin class $CatBreedCopyWith<$Res> {
  factory $CatBreedCopyWith(CatBreed value, $Res Function(CatBreed) _then) =
      _$CatBreedCopyWithImpl;
  @useResult
  $Res call(
      {String breed,
      String country,
      String origin,
      String coat,
      String pattern});
}

/// @nodoc
class _$CatBreedCopyWithImpl<$Res> implements $CatBreedCopyWith<$Res> {
  _$CatBreedCopyWithImpl(this._self, this._then);

  final CatBreed _self;
  final $Res Function(CatBreed) _then;

  /// Create a copy of CatBreed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breed = null,
    Object? country = null,
    Object? origin = null,
    Object? coat = null,
    Object? pattern = null,
  }) {
    return _then(_self.copyWith(
      breed: null == breed
          ? _self.breed
          : breed // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _self.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      coat: null == coat
          ? _self.coat
          : coat // ignore: cast_nullable_to_non_nullable
              as String,
      pattern: null == pattern
          ? _self.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CatBreed implements CatBreed {
  const _CatBreed(
      {required this.breed,
      required this.country,
      required this.origin,
      required this.coat,
      required this.pattern});
  factory _CatBreed.fromJson(Map<String, dynamic> json) =>
      _$CatBreedFromJson(json);

  @override
  final String breed;
  @override
  final String country;
  @override
  final String origin;
  @override
  final String coat;
  @override
  final String pattern;

  /// Create a copy of CatBreed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CatBreedCopyWith<_CatBreed> get copyWith =>
      __$CatBreedCopyWithImpl<_CatBreed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CatBreedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatBreed &&
            (identical(other.breed, breed) || other.breed == breed) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.coat, coat) || other.coat == coat) &&
            (identical(other.pattern, pattern) || other.pattern == pattern));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, breed, country, origin, coat, pattern);

  @override
  String toString() {
    return 'CatBreed(breed: $breed, country: $country, origin: $origin, coat: $coat, pattern: $pattern)';
  }
}

/// @nodoc
abstract mixin class _$CatBreedCopyWith<$Res>
    implements $CatBreedCopyWith<$Res> {
  factory _$CatBreedCopyWith(_CatBreed value, $Res Function(_CatBreed) _then) =
      __$CatBreedCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String breed,
      String country,
      String origin,
      String coat,
      String pattern});
}

/// @nodoc
class __$CatBreedCopyWithImpl<$Res> implements _$CatBreedCopyWith<$Res> {
  __$CatBreedCopyWithImpl(this._self, this._then);

  final _CatBreed _self;
  final $Res Function(_CatBreed) _then;

  /// Create a copy of CatBreed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? breed = null,
    Object? country = null,
    Object? origin = null,
    Object? coat = null,
    Object? pattern = null,
  }) {
    return _then(_CatBreed(
      breed: null == breed
          ? _self.breed
          : breed // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _self.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      coat: null == coat
          ? _self.coat
          : coat // ignore: cast_nullable_to_non_nullable
              as String,
      pattern: null == pattern
          ? _self.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
