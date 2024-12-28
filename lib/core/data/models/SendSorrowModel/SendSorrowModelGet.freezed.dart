// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'SendSorrowModelGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendSorrowModelGet _$SendSorrowModelGetFromJson(Map<String, dynamic> json) {
  return _SendSorrowModelGet.fromJson(json);
}

/// @nodoc
mixin _$SendSorrowModelGet {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nameSound')
  String? get nameSound => throw _privateConstructorUsedError;
  @JsonKey(name: 'pathPublic')
  String get pathPublic => throw _privateConstructorUsedError;

  /// Serializes this SendSorrowModelGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendSorrowModelGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendSorrowModelGetCopyWith<SendSorrowModelGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendSorrowModelGetCopyWith<$Res> {
  factory $SendSorrowModelGetCopyWith(
          SendSorrowModelGet value, $Res Function(SendSorrowModelGet) then) =
      _$SendSorrowModelGetCopyWithImpl<$Res, SendSorrowModelGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'nameSound') String? nameSound,
      @JsonKey(name: 'pathPublic') String pathPublic});
}

/// @nodoc
class _$SendSorrowModelGetCopyWithImpl<$Res, $Val extends SendSorrowModelGet>
    implements $SendSorrowModelGetCopyWith<$Res> {
  _$SendSorrowModelGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendSorrowModelGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameSound = freezed,
    Object? pathPublic = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nameSound: freezed == nameSound
          ? _value.nameSound
          : nameSound // ignore: cast_nullable_to_non_nullable
              as String?,
      pathPublic: null == pathPublic
          ? _value.pathPublic
          : pathPublic // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendSorrowModelGetImplCopyWith<$Res>
    implements $SendSorrowModelGetCopyWith<$Res> {
  factory _$$SendSorrowModelGetImplCopyWith(_$SendSorrowModelGetImpl value,
          $Res Function(_$SendSorrowModelGetImpl) then) =
      __$$SendSorrowModelGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'nameSound') String? nameSound,
      @JsonKey(name: 'pathPublic') String pathPublic});
}

/// @nodoc
class __$$SendSorrowModelGetImplCopyWithImpl<$Res>
    extends _$SendSorrowModelGetCopyWithImpl<$Res, _$SendSorrowModelGetImpl>
    implements _$$SendSorrowModelGetImplCopyWith<$Res> {
  __$$SendSorrowModelGetImplCopyWithImpl(_$SendSorrowModelGetImpl _value,
      $Res Function(_$SendSorrowModelGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of SendSorrowModelGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameSound = freezed,
    Object? pathPublic = null,
  }) {
    return _then(_$SendSorrowModelGetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nameSound: freezed == nameSound
          ? _value.nameSound
          : nameSound // ignore: cast_nullable_to_non_nullable
              as String?,
      pathPublic: null == pathPublic
          ? _value.pathPublic
          : pathPublic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendSorrowModelGetImpl implements _SendSorrowModelGet {
  _$SendSorrowModelGetImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'nameSound') this.nameSound,
      @JsonKey(name: 'pathPublic') required this.pathPublic});

  factory _$SendSorrowModelGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendSorrowModelGetImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'nameSound')
  final String? nameSound;
  @override
  @JsonKey(name: 'pathPublic')
  final String pathPublic;

  @override
  String toString() {
    return 'SendSorrowModelGet(id: $id, nameSound: $nameSound, pathPublic: $pathPublic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendSorrowModelGetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameSound, nameSound) ||
                other.nameSound == nameSound) &&
            (identical(other.pathPublic, pathPublic) ||
                other.pathPublic == pathPublic));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nameSound, pathPublic);

  /// Create a copy of SendSorrowModelGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendSorrowModelGetImplCopyWith<_$SendSorrowModelGetImpl> get copyWith =>
      __$$SendSorrowModelGetImplCopyWithImpl<_$SendSorrowModelGetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendSorrowModelGetImplToJson(
      this,
    );
  }
}

abstract class _SendSorrowModelGet implements SendSorrowModelGet {
  factory _SendSorrowModelGet(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'nameSound') final String? nameSound,
          @JsonKey(name: 'pathPublic') required final String pathPublic}) =
      _$SendSorrowModelGetImpl;

  factory _SendSorrowModelGet.fromJson(Map<String, dynamic> json) =
      _$SendSorrowModelGetImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'nameSound')
  String? get nameSound;
  @override
  @JsonKey(name: 'pathPublic')
  String get pathPublic;

  /// Create a copy of SendSorrowModelGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendSorrowModelGetImplCopyWith<_$SendSorrowModelGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
