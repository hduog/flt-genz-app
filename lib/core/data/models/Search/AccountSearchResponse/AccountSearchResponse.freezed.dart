// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AccountSearchResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountSearchResponse _$AccountSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _AccountSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$AccountSearchResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avata')
  String get avata => throw _privateConstructorUsedError;

  /// Serializes this AccountSearchResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountSearchResponseCopyWith<AccountSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSearchResponseCopyWith<$Res> {
  factory $AccountSearchResponseCopyWith(AccountSearchResponse value,
          $Res Function(AccountSearchResponse) then) =
      _$AccountSearchResponseCopyWithImpl<$Res, AccountSearchResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'fullName') String fullName,
      @JsonKey(name: 'avata') String avata});
}

/// @nodoc
class _$AccountSearchResponseCopyWithImpl<$Res,
        $Val extends AccountSearchResponse>
    implements $AccountSearchResponseCopyWith<$Res> {
  _$AccountSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? avata = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      avata: null == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountSearchResponseImplCopyWith<$Res>
    implements $AccountSearchResponseCopyWith<$Res> {
  factory _$$AccountSearchResponseImplCopyWith(
          _$AccountSearchResponseImpl value,
          $Res Function(_$AccountSearchResponseImpl) then) =
      __$$AccountSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'fullName') String fullName,
      @JsonKey(name: 'avata') String avata});
}

/// @nodoc
class __$$AccountSearchResponseImplCopyWithImpl<$Res>
    extends _$AccountSearchResponseCopyWithImpl<$Res,
        _$AccountSearchResponseImpl>
    implements _$$AccountSearchResponseImplCopyWith<$Res> {
  __$$AccountSearchResponseImplCopyWithImpl(_$AccountSearchResponseImpl _value,
      $Res Function(_$AccountSearchResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? avata = null,
  }) {
    return _then(_$AccountSearchResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      avata: null == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountSearchResponseImpl implements _AccountSearchResponse {
  _$AccountSearchResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'fullName') required this.fullName,
      @JsonKey(name: 'avata') required this.avata});

  factory _$AccountSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountSearchResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'fullName')
  final String fullName;
  @override
  @JsonKey(name: 'avata')
  final String avata;

  @override
  String toString() {
    return 'AccountSearchResponse(id: $id, fullName: $fullName, avata: $avata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSearchResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avata, avata) || other.avata == avata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, avata);

  /// Create a copy of AccountSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSearchResponseImplCopyWith<_$AccountSearchResponseImpl>
      get copyWith => __$$AccountSearchResponseImplCopyWithImpl<
          _$AccountSearchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _AccountSearchResponse implements AccountSearchResponse {
  factory _AccountSearchResponse(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'fullName') required final String fullName,
          @JsonKey(name: 'avata') required final String avata}) =
      _$AccountSearchResponseImpl;

  factory _AccountSearchResponse.fromJson(Map<String, dynamic> json) =
      _$AccountSearchResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'fullName')
  String get fullName;
  @override
  @JsonKey(name: 'avata')
  String get avata;

  /// Create a copy of AccountSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountSearchResponseImplCopyWith<_$AccountSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
