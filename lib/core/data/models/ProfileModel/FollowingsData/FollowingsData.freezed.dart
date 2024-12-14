// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'FollowingsData.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FollowingsData _$FollowingsDataFromJson(Map<String, dynamic> json) {
  return _FollowingsData.fromJson(json);
}

/// @nodoc
mixin _$FollowingsData {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'nickName')
  String? get nickName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avata')
  String? get avata => throw _privateConstructorUsedError;

  /// Serializes this FollowingsData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowingsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowingsDataCopyWith<FollowingsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowingsDataCopyWith<$Res> {
  factory $FollowingsDataCopyWith(
          FollowingsData value, $Res Function(FollowingsData) then) =
      _$FollowingsDataCopyWithImpl<$Res, FollowingsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'fullName') String fullName,
      @JsonKey(name: 'nickName') String? nickName,
      @JsonKey(name: 'avata') String? avata});
}

/// @nodoc
class _$FollowingsDataCopyWithImpl<$Res, $Val extends FollowingsData>
    implements $FollowingsDataCopyWith<$Res> {
  _$FollowingsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowingsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? nickName = freezed,
    Object? avata = freezed,
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
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      avata: freezed == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowingsDataImplCopyWith<$Res>
    implements $FollowingsDataCopyWith<$Res> {
  factory _$$FollowingsDataImplCopyWith(_$FollowingsDataImpl value,
          $Res Function(_$FollowingsDataImpl) then) =
      __$$FollowingsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'fullName') String fullName,
      @JsonKey(name: 'nickName') String? nickName,
      @JsonKey(name: 'avata') String? avata});
}

/// @nodoc
class __$$FollowingsDataImplCopyWithImpl<$Res>
    extends _$FollowingsDataCopyWithImpl<$Res, _$FollowingsDataImpl>
    implements _$$FollowingsDataImplCopyWith<$Res> {
  __$$FollowingsDataImplCopyWithImpl(
      _$FollowingsDataImpl _value, $Res Function(_$FollowingsDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FollowingsData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? nickName = freezed,
    Object? avata = freezed,
  }) {
    return _then(_$FollowingsDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: freezed == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      avata: freezed == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowingsDataImpl implements _FollowingsData {
  _$FollowingsDataImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'fullName') required this.fullName,
      @JsonKey(name: 'nickName') this.nickName,
      @JsonKey(name: 'avata') this.avata});

  factory _$FollowingsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowingsDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'fullName')
  final String fullName;
  @override
  @JsonKey(name: 'nickName')
  final String? nickName;
  @override
  @JsonKey(name: 'avata')
  final String? avata;

  @override
  String toString() {
    return 'FollowingsData(id: $id, fullName: $fullName, nickName: $nickName, avata: $avata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowingsDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.avata, avata) || other.avata == avata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, nickName, avata);

  /// Create a copy of FollowingsData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowingsDataImplCopyWith<_$FollowingsDataImpl> get copyWith =>
      __$$FollowingsDataImplCopyWithImpl<_$FollowingsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowingsDataImplToJson(
      this,
    );
  }
}

abstract class _FollowingsData implements FollowingsData {
  factory _FollowingsData(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'fullName') required final String fullName,
      @JsonKey(name: 'nickName') final String? nickName,
      @JsonKey(name: 'avata') final String? avata}) = _$FollowingsDataImpl;

  factory _FollowingsData.fromJson(Map<String, dynamic> json) =
      _$FollowingsDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'fullName')
  String get fullName;
  @override
  @JsonKey(name: 'nickName')
  String? get nickName;
  @override
  @JsonKey(name: 'avata')
  String? get avata;

  /// Create a copy of FollowingsData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowingsDataImplCopyWith<_$FollowingsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}