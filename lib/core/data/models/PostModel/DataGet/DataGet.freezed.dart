// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'DataGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DataGet _$DataGetFromJson(Map<String, dynamic> json) {
  return _DataGet.fromJson(json);
}

/// @nodoc
mixin _$DataGet {
  @JsonKey(name: 'account')
  AuthorGet get account => throw _privateConstructorUsedError;
  @JsonKey(name: 'accountId')
  String get accountId => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentText')
  String? get contentText => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'isSave')
  bool? get isSave => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<ImageGet>? get images => throw _privateConstructorUsedError;

  /// Serializes this DataGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataGetCopyWith<DataGet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataGetCopyWith<$Res> {
  factory $DataGetCopyWith(DataGet value, $Res Function(DataGet) then) =
      _$DataGetCopyWithImpl<$Res, DataGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'account') AuthorGet account,
      @JsonKey(name: 'accountId') String accountId,
      @JsonKey(name: 'contentText') String? contentText,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'isSave') bool? isSave,
      @JsonKey(name: 'images') List<ImageGet>? images});

  $AuthorGetCopyWith<$Res> get account;
}

/// @nodoc
class _$DataGetCopyWithImpl<$Res, $Val extends DataGet>
    implements $DataGetCopyWith<$Res> {
  _$DataGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? accountId = null,
    Object? contentText = freezed,
    Object? created_at = freezed,
    Object? id = null,
    Object? isSave = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AuthorGet,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isSave: freezed == isSave
          ? _value.isSave
          : isSave // ignore: cast_nullable_to_non_nullable
              as bool?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageGet>?,
    ) as $Val);
  }

  /// Create a copy of DataGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorGetCopyWith<$Res> get account {
    return $AuthorGetCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataGetImplCopyWith<$Res> implements $DataGetCopyWith<$Res> {
  factory _$$DataGetImplCopyWith(
          _$DataGetImpl value, $Res Function(_$DataGetImpl) then) =
      __$$DataGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'account') AuthorGet account,
      @JsonKey(name: 'accountId') String accountId,
      @JsonKey(name: 'contentText') String? contentText,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'isSave') bool? isSave,
      @JsonKey(name: 'images') List<ImageGet>? images});

  @override
  $AuthorGetCopyWith<$Res> get account;
}

/// @nodoc
class __$$DataGetImplCopyWithImpl<$Res>
    extends _$DataGetCopyWithImpl<$Res, _$DataGetImpl>
    implements _$$DataGetImplCopyWith<$Res> {
  __$$DataGetImplCopyWithImpl(
      _$DataGetImpl _value, $Res Function(_$DataGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? accountId = null,
    Object? contentText = freezed,
    Object? created_at = freezed,
    Object? id = null,
    Object? isSave = freezed,
    Object? images = freezed,
  }) {
    return _then(_$DataGetImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AuthorGet,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isSave: freezed == isSave
          ? _value.isSave
          : isSave // ignore: cast_nullable_to_non_nullable
              as bool?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageGet>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataGetImpl implements _DataGet {
  _$DataGetImpl(
      {@JsonKey(name: 'account') required this.account,
      @JsonKey(name: 'accountId') required this.accountId,
      @JsonKey(name: 'contentText') this.contentText,
      @JsonKey(name: 'created_at') this.created_at,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'isSave') this.isSave,
      @JsonKey(name: 'images') final List<ImageGet>? images})
      : _images = images;

  factory _$DataGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataGetImplFromJson(json);

  @override
  @JsonKey(name: 'account')
  final AuthorGet account;
  @override
  @JsonKey(name: 'accountId')
  final String accountId;
  @override
  @JsonKey(name: 'contentText')
  final String? contentText;
  @override
  @JsonKey(name: 'created_at')
  final String? created_at;
  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'isSave')
  final bool? isSave;
  final List<ImageGet>? _images;
  @override
  @JsonKey(name: 'images')
  List<ImageGet>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataGet(account: $account, accountId: $accountId, contentText: $contentText, created_at: $created_at, id: $id, isSave: $isSave, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataGetImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.contentText, contentText) ||
                other.contentText == contentText) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isSave, isSave) || other.isSave == isSave) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, account, accountId, contentText,
      created_at, id, isSave, const DeepCollectionEquality().hash(_images));

  /// Create a copy of DataGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataGetImplCopyWith<_$DataGetImpl> get copyWith =>
      __$$DataGetImplCopyWithImpl<_$DataGetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataGetImplToJson(
      this,
    );
  }
}

abstract class _DataGet implements DataGet {
  factory _DataGet(
      {@JsonKey(name: 'account') required final AuthorGet account,
      @JsonKey(name: 'accountId') required final String accountId,
      @JsonKey(name: 'contentText') final String? contentText,
      @JsonKey(name: 'created_at') final String? created_at,
      @JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'isSave') final bool? isSave,
      @JsonKey(name: 'images') final List<ImageGet>? images}) = _$DataGetImpl;

  factory _DataGet.fromJson(Map<String, dynamic> json) = _$DataGetImpl.fromJson;

  @override
  @JsonKey(name: 'account')
  AuthorGet get account;
  @override
  @JsonKey(name: 'accountId')
  String get accountId;
  @override
  @JsonKey(name: 'contentText')
  String? get contentText;
  @override
  @JsonKey(name: 'created_at')
  String? get created_at;
  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'isSave')
  bool? get isSave;
  @override
  @JsonKey(name: 'images')
  List<ImageGet>? get images;

  /// Create a copy of DataGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataGetImplCopyWith<_$DataGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
