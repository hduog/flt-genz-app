// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PostInfoGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostInfoGet _$PostInfoGetFromJson(Map<String, dynamic> json) {
  return _PostInfoGet.fromJson(json);
}

/// @nodoc
mixin _$PostInfoGet {
  @JsonKey(name: 'data')
  List<DataGet> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'pagination')
  PaginationGet get pagination => throw _privateConstructorUsedError;

  /// Serializes this PostInfoGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostInfoGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostInfoGetCopyWith<PostInfoGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostInfoGetCopyWith<$Res> {
  factory $PostInfoGetCopyWith(
          PostInfoGet value, $Res Function(PostInfoGet) then) =
      _$PostInfoGetCopyWithImpl<$Res, PostInfoGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<DataGet> data,
      @JsonKey(name: 'pagination') PaginationGet pagination});

  $PaginationGetCopyWith<$Res> get pagination;
}

/// @nodoc
class _$PostInfoGetCopyWithImpl<$Res, $Val extends PostInfoGet>
    implements $PostInfoGetCopyWith<$Res> {
  _$PostInfoGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostInfoGet
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
              as List<DataGet>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationGet,
    ) as $Val);
  }

  /// Create a copy of PostInfoGet
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
abstract class _$$PostInfoGetImplCopyWith<$Res>
    implements $PostInfoGetCopyWith<$Res> {
  factory _$$PostInfoGetImplCopyWith(
          _$PostInfoGetImpl value, $Res Function(_$PostInfoGetImpl) then) =
      __$$PostInfoGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') List<DataGet> data,
      @JsonKey(name: 'pagination') PaginationGet pagination});

  @override
  $PaginationGetCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$PostInfoGetImplCopyWithImpl<$Res>
    extends _$PostInfoGetCopyWithImpl<$Res, _$PostInfoGetImpl>
    implements _$$PostInfoGetImplCopyWith<$Res> {
  __$$PostInfoGetImplCopyWithImpl(
      _$PostInfoGetImpl _value, $Res Function(_$PostInfoGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostInfoGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? pagination = null,
  }) {
    return _then(_$PostInfoGetImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataGet>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationGet,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostInfoGetImpl implements _PostInfoGet {
  _$PostInfoGetImpl(
      {@JsonKey(name: 'data') required final List<DataGet> data,
      @JsonKey(name: 'pagination') required this.pagination})
      : _data = data;

  factory _$PostInfoGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostInfoGetImplFromJson(json);

  final List<DataGet> _data;
  @override
  @JsonKey(name: 'data')
  List<DataGet> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'pagination')
  final PaginationGet pagination;

  @override
  String toString() {
    return 'PostInfoGet(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostInfoGetImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pagination);

  /// Create a copy of PostInfoGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostInfoGetImplCopyWith<_$PostInfoGetImpl> get copyWith =>
      __$$PostInfoGetImplCopyWithImpl<_$PostInfoGetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostInfoGetImplToJson(
      this,
    );
  }
}

abstract class _PostInfoGet implements PostInfoGet {
  factory _PostInfoGet(
      {@JsonKey(name: 'data') required final List<DataGet> data,
      @JsonKey(name: 'pagination')
      required final PaginationGet pagination}) = _$PostInfoGetImpl;

  factory _PostInfoGet.fromJson(Map<String, dynamic> json) =
      _$PostInfoGetImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<DataGet> get data;
  @override
  @JsonKey(name: 'pagination')
  PaginationGet get pagination;

  /// Create a copy of PostInfoGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostInfoGetImplCopyWith<_$PostInfoGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
