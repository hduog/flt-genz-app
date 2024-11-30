// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CateBlogForGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CateBlogForGet _$CateBlogForGetFromJson(Map<String, dynamic> json) {
  return _CateBlogForGet.fromJson(json);
}

/// @nodoc
mixin _$CateBlogForGet {
  @JsonKey(name: 'cateBlogItem')
  List<CateBlogItem> get cateBlogItem => throw _privateConstructorUsedError;

  /// Serializes this CateBlogForGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CateBlogForGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CateBlogForGetCopyWith<CateBlogForGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CateBlogForGetCopyWith<$Res> {
  factory $CateBlogForGetCopyWith(
          CateBlogForGet value, $Res Function(CateBlogForGet) then) =
      _$CateBlogForGetCopyWithImpl<$Res, CateBlogForGet>;
  @useResult
  $Res call({@JsonKey(name: 'cateBlogItem') List<CateBlogItem> cateBlogItem});
}

/// @nodoc
class _$CateBlogForGetCopyWithImpl<$Res, $Val extends CateBlogForGet>
    implements $CateBlogForGetCopyWith<$Res> {
  _$CateBlogForGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CateBlogForGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cateBlogItem = null,
  }) {
    return _then(_value.copyWith(
      cateBlogItem: null == cateBlogItem
          ? _value.cateBlogItem
          : cateBlogItem // ignore: cast_nullable_to_non_nullable
              as List<CateBlogItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CateBlogForGetImplCopyWith<$Res>
    implements $CateBlogForGetCopyWith<$Res> {
  factory _$$CateBlogForGetImplCopyWith(_$CateBlogForGetImpl value,
          $Res Function(_$CateBlogForGetImpl) then) =
      __$$CateBlogForGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'cateBlogItem') List<CateBlogItem> cateBlogItem});
}

/// @nodoc
class __$$CateBlogForGetImplCopyWithImpl<$Res>
    extends _$CateBlogForGetCopyWithImpl<$Res, _$CateBlogForGetImpl>
    implements _$$CateBlogForGetImplCopyWith<$Res> {
  __$$CateBlogForGetImplCopyWithImpl(
      _$CateBlogForGetImpl _value, $Res Function(_$CateBlogForGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of CateBlogForGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cateBlogItem = null,
  }) {
    return _then(_$CateBlogForGetImpl(
      cateBlogItem: null == cateBlogItem
          ? _value._cateBlogItem
          : cateBlogItem // ignore: cast_nullable_to_non_nullable
              as List<CateBlogItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CateBlogForGetImpl implements _CateBlogForGet {
  _$CateBlogForGetImpl(
      {@JsonKey(name: 'cateBlogItem')
      required final List<CateBlogItem> cateBlogItem})
      : _cateBlogItem = cateBlogItem;

  factory _$CateBlogForGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$CateBlogForGetImplFromJson(json);

  final List<CateBlogItem> _cateBlogItem;
  @override
  @JsonKey(name: 'cateBlogItem')
  List<CateBlogItem> get cateBlogItem {
    if (_cateBlogItem is EqualUnmodifiableListView) return _cateBlogItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cateBlogItem);
  }

  @override
  String toString() {
    return 'CateBlogForGet(cateBlogItem: $cateBlogItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CateBlogForGetImpl &&
            const DeepCollectionEquality()
                .equals(other._cateBlogItem, _cateBlogItem));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cateBlogItem));

  /// Create a copy of CateBlogForGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CateBlogForGetImplCopyWith<_$CateBlogForGetImpl> get copyWith =>
      __$$CateBlogForGetImplCopyWithImpl<_$CateBlogForGetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CateBlogForGetImplToJson(
      this,
    );
  }
}

abstract class _CateBlogForGet implements CateBlogForGet {
  factory _CateBlogForGet(
      {@JsonKey(name: 'cateBlogItem')
      required final List<CateBlogItem> cateBlogItem}) = _$CateBlogForGetImpl;

  factory _CateBlogForGet.fromJson(Map<String, dynamic> json) =
      _$CateBlogForGetImpl.fromJson;

  @override
  @JsonKey(name: 'cateBlogItem')
  List<CateBlogItem> get cateBlogItem;

  /// Create a copy of CateBlogForGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CateBlogForGetImplCopyWith<_$CateBlogForGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
