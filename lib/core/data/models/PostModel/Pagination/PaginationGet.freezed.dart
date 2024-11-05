// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PaginationGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaginationGet _$PaginationGetFromJson(Map<String, dynamic> json) {
  return _PaginationGet.fromJson(json);
}

/// @nodoc
mixin _$PaginationGet {
  @JsonKey(name: 'limit')
  int get limit => throw _privateConstructorUsedError; //DEFINE ENTITY
  @JsonKey(name: 'pageNo')
  int get pageNo => throw _privateConstructorUsedError; //DEFINE ENTITY
  @JsonKey(name: 'totalPage')
  int get totalPage => throw _privateConstructorUsedError; //DEFINE ENTITY
  @JsonKey(name: 'totalRecord')
  int get totalRecord => throw _privateConstructorUsedError;

  /// Serializes this PaginationGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationGetCopyWith<PaginationGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationGetCopyWith<$Res> {
  factory $PaginationGetCopyWith(
          PaginationGet value, $Res Function(PaginationGet) then) =
      _$PaginationGetCopyWithImpl<$Res, PaginationGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'limit') int limit,
      @JsonKey(name: 'pageNo') int pageNo,
      @JsonKey(name: 'totalPage') int totalPage,
      @JsonKey(name: 'totalRecord') int totalRecord});
}

/// @nodoc
class _$PaginationGetCopyWithImpl<$Res, $Val extends PaginationGet>
    implements $PaginationGetCopyWith<$Res> {
  _$PaginationGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? pageNo = null,
    Object? totalPage = null,
    Object? totalRecord = null,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalRecord: null == totalRecord
          ? _value.totalRecord
          : totalRecord // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationGetImplCopyWith<$Res>
    implements $PaginationGetCopyWith<$Res> {
  factory _$$PaginationGetImplCopyWith(
          _$PaginationGetImpl value, $Res Function(_$PaginationGetImpl) then) =
      __$$PaginationGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'limit') int limit,
      @JsonKey(name: 'pageNo') int pageNo,
      @JsonKey(name: 'totalPage') int totalPage,
      @JsonKey(name: 'totalRecord') int totalRecord});
}

/// @nodoc
class __$$PaginationGetImplCopyWithImpl<$Res>
    extends _$PaginationGetCopyWithImpl<$Res, _$PaginationGetImpl>
    implements _$$PaginationGetImplCopyWith<$Res> {
  __$$PaginationGetImplCopyWithImpl(
      _$PaginationGetImpl _value, $Res Function(_$PaginationGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginationGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? pageNo = null,
    Object? totalPage = null,
    Object? totalRecord = null,
  }) {
    return _then(_$PaginationGetImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      pageNo: null == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalRecord: null == totalRecord
          ? _value.totalRecord
          : totalRecord // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationGetImpl implements _PaginationGet {
  _$PaginationGetImpl(
      {@JsonKey(name: 'limit') required this.limit,
      @JsonKey(name: 'pageNo') required this.pageNo,
      @JsonKey(name: 'totalPage') required this.totalPage,
      @JsonKey(name: 'totalRecord') required this.totalRecord});

  factory _$PaginationGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationGetImplFromJson(json);

  @override
  @JsonKey(name: 'limit')
  final int limit;
//DEFINE ENTITY
  @override
  @JsonKey(name: 'pageNo')
  final int pageNo;
//DEFINE ENTITY
  @override
  @JsonKey(name: 'totalPage')
  final int totalPage;
//DEFINE ENTITY
  @override
  @JsonKey(name: 'totalRecord')
  final int totalRecord;

  @override
  String toString() {
    return 'PaginationGet(limit: $limit, pageNo: $pageNo, totalPage: $totalPage, totalRecord: $totalRecord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationGetImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.totalRecord, totalRecord) ||
                other.totalRecord == totalRecord));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, limit, pageNo, totalPage, totalRecord);

  /// Create a copy of PaginationGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationGetImplCopyWith<_$PaginationGetImpl> get copyWith =>
      __$$PaginationGetImplCopyWithImpl<_$PaginationGetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationGetImplToJson(
      this,
    );
  }
}

abstract class _PaginationGet implements PaginationGet {
  factory _PaginationGet(
          {@JsonKey(name: 'limit') required final int limit,
          @JsonKey(name: 'pageNo') required final int pageNo,
          @JsonKey(name: 'totalPage') required final int totalPage,
          @JsonKey(name: 'totalRecord') required final int totalRecord}) =
      _$PaginationGetImpl;

  factory _PaginationGet.fromJson(Map<String, dynamic> json) =
      _$PaginationGetImpl.fromJson;

  @override
  @JsonKey(name: 'limit')
  int get limit; //DEFINE ENTITY
  @override
  @JsonKey(name: 'pageNo')
  int get pageNo; //DEFINE ENTITY
  @override
  @JsonKey(name: 'totalPage')
  int get totalPage; //DEFINE ENTITY
  @override
  @JsonKey(name: 'totalRecord')
  int get totalRecord;

  /// Create a copy of PaginationGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationGetImplCopyWith<_$PaginationGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
