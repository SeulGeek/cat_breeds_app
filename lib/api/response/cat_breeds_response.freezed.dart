// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_breeds_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatBreedsResponse implements DiagnosticableTreeMixin {
  List<CatBreed> get data;

  /// Create a copy of CatBreedsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CatBreedsResponseCopyWith<CatBreedsResponse> get copyWith =>
      _$CatBreedsResponseCopyWithImpl<CatBreedsResponse>(
          this as CatBreedsResponse, _$identity);

  /// Serializes this CatBreedsResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'CatBreedsResponse'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatBreedsResponse &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CatBreedsResponse(data: $data)';
  }
}

/// @nodoc
abstract mixin class $CatBreedsResponseCopyWith<$Res> {
  factory $CatBreedsResponseCopyWith(
          CatBreedsResponse value, $Res Function(CatBreedsResponse) _then) =
      _$CatBreedsResponseCopyWithImpl;
  @useResult
  $Res call({List<CatBreed> data});
}

/// @nodoc
class _$CatBreedsResponseCopyWithImpl<$Res>
    implements $CatBreedsResponseCopyWith<$Res> {
  _$CatBreedsResponseCopyWithImpl(this._self, this._then);

  final CatBreedsResponse _self;
  final $Res Function(CatBreedsResponse) _then;

  /// Create a copy of CatBreedsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CatBreed>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CatBreedsResponse
    with DiagnosticableTreeMixin
    implements CatBreedsResponse {
  const _CatBreedsResponse({required final List<CatBreed> data}) : _data = data;
  factory _CatBreedsResponse.fromJson(Map<String, dynamic> json) =>
      _$CatBreedsResponseFromJson(json);

  final List<CatBreed> _data;
  @override
  List<CatBreed> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// Create a copy of CatBreedsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CatBreedsResponseCopyWith<_CatBreedsResponse> get copyWith =>
      __$CatBreedsResponseCopyWithImpl<_CatBreedsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CatBreedsResponseToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'CatBreedsResponse'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CatBreedsResponse &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CatBreedsResponse(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$CatBreedsResponseCopyWith<$Res>
    implements $CatBreedsResponseCopyWith<$Res> {
  factory _$CatBreedsResponseCopyWith(
          _CatBreedsResponse value, $Res Function(_CatBreedsResponse) _then) =
      __$CatBreedsResponseCopyWithImpl;
  @override
  @useResult
  $Res call({List<CatBreed> data});
}

/// @nodoc
class __$CatBreedsResponseCopyWithImpl<$Res>
    implements _$CatBreedsResponseCopyWith<$Res> {
  __$CatBreedsResponseCopyWithImpl(this._self, this._then);

  final _CatBreedsResponse _self;
  final $Res Function(_CatBreedsResponse) _then;

  /// Create a copy of CatBreedsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_CatBreedsResponse(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CatBreed>,
    ));
  }
}

// dart format on
