// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'BlogInfoGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogInfoGet _$BlogInfoGetFromJson(Map<String, dynamic> json) {
  return _BlogInfoGet.fromJson(json);
}

/// @nodoc
mixin _$BlogInfoGet {
  @JsonKey(name: 'data')
  List<BlogData> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'pagination')
  PaginationGet get pagination => throw _privateConstructorUsedError;

  /// Serializes this BlogInfoGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlogInfoGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogInfoGetCopyWith<BlogInfoGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogInfoGetCopyWith<$Res> {
  factory $BlogInfoGetCopyWith(
          BlogInfoGet value, $Res Function(BlogInfoGet) then) =
      _$BlogInfoGetCopyWithImpl<$Res, BlogInfoGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<BlogData> data,
      @JsonKey(name: 'pagination') PaginationGet pagination});

  $PaginationGetCopyWith<$Res> get pagination;
}

/// @nodoc
class _$BlogInfoGetCopyWithImpl<$Res, $Val extends BlogInfoGet>
    implements $BlogInfoGetCopyWith<$Res> {
  _$BlogInfoGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogInfoGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BlogData>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationGet,
    ) as $Val);
  }

  /// Create a copy of BlogInfoGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationGetCopyWith<$Res> get pagination {
    return $PaginationGetCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlogInfoGetImplCopyWith<$Res>
    implements $BlogInfoGetCopyWith<$Res> {
  factory _$$BlogInfoGetImplCopyWith(
          _$BlogInfoGetImpl value, $Res Function(_$BlogInfoGetImpl) then) =
      __$$BlogInfoGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<BlogData> data,
      @JsonKey(name: 'pagination') PaginationGet pagination});

  @override
  $PaginationGetCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$BlogInfoGetImplCopyWithImpl<$Res>
    extends _$BlogInfoGetCopyWithImpl<$Res, _$BlogInfoGetImpl>
    implements _$$BlogInfoGetImplCopyWith<$Res> {
  __$$BlogInfoGetImplCopyWithImpl(
      _$BlogInfoGetImpl _value, $Res Function(_$BlogInfoGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogInfoGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_$BlogInfoGetImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BlogData>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationGet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogInfoGetImpl implements _BlogInfoGet {
  _$BlogInfoGetImpl(
      {@JsonKey(name: 'data') required final List<BlogData> data,
      @JsonKey(name: 'pagination') required this.pagination})
      : _data = data;

  factory _$BlogInfoGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogInfoGetImplFromJson(json);

  final List<BlogData> _data;
  @override
  @JsonKey(name: 'data')
  List<BlogData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'pagination')
  final PaginationGet pagination;

  @override
  String toString() {
    return 'BlogInfoGet(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogInfoGetImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pagination);

  /// Create a copy of BlogInfoGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogInfoGetImplCopyWith<_$BlogInfoGetImpl> get copyWith =>
      __$$BlogInfoGetImplCopyWithImpl<_$BlogInfoGetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogInfoGetImplToJson(
      this,
    );
  }
}

abstract class _BlogInfoGet implements BlogInfoGet {
  factory _BlogInfoGet(
      {@JsonKey(name: 'data') required final List<BlogData> data,
      @JsonKey(name: 'pagination')
      required final PaginationGet pagination}) = _$BlogInfoGetImpl;

  factory _BlogInfoGet.fromJson(Map<String, dynamic> json) =
      _$BlogInfoGetImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<BlogData> get data;
  @override
  @JsonKey(name: 'pagination')
  PaginationGet get pagination;

  /// Create a copy of BlogInfoGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogInfoGetImplCopyWith<_$BlogInfoGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
