// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PostForCreate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostForCreate _$PostForCreateFromJson(Map<String, dynamic> json) {
  return _PostForCreate.fromJson(json);
}

/// @nodoc
mixin _$PostForCreate {
  @JsonKey(name: 'contentText')
  String get contentText => throw _privateConstructorUsedError;
  @JsonKey(name: 'accountId')
  String get accountId => throw _privateConstructorUsedError;
  @JsonKey(name: 'imagePaths')
  List<String>? get imagePaths => throw _privateConstructorUsedError;
  @JsonKey(name: 'permissionPostId')
  String get permissionPostId => throw _privateConstructorUsedError;

  /// Serializes this PostForCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostForCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostForCreateCopyWith<PostForCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostForCreateCopyWith<$Res> {
  factory $PostForCreateCopyWith(
          PostForCreate value, $Res Function(PostForCreate) then) =
      _$PostForCreateCopyWithImpl<$Res, PostForCreate>;
  @useResult
  $Res call(
      {@JsonKey(name: 'contentText') String contentText,
      @JsonKey(name: 'accountId') String accountId,
      @JsonKey(name: 'imagePaths') List<String>? imagePaths,
      @JsonKey(name: 'permissionPostId') String permissionPostId});
}

/// @nodoc
class _$PostForCreateCopyWithImpl<$Res, $Val extends PostForCreate>
    implements $PostForCreateCopyWith<$Res> {
  _$PostForCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostForCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentText = null,
    Object? accountId = null,
    Object? imagePaths = freezed,
    Object? permissionPostId = null,
  }) {
    return _then(_value.copyWith(
      contentText: null == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      imagePaths: freezed == imagePaths
          ? _value.imagePaths
          : imagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      permissionPostId: null == permissionPostId
          ? _value.permissionPostId
          : permissionPostId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostForCreateImplCopyWith<$Res>
    implements $PostForCreateCopyWith<$Res> {
  factory _$$PostForCreateImplCopyWith(
          _$PostForCreateImpl value, $Res Function(_$PostForCreateImpl) then) =
      __$$PostForCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'contentText') String contentText,
      @JsonKey(name: 'accountId') String accountId,
      @JsonKey(name: 'imagePaths') List<String>? imagePaths,
      @JsonKey(name: 'permissionPostId') String permissionPostId});
}

/// @nodoc
class __$$PostForCreateImplCopyWithImpl<$Res>
    extends _$PostForCreateCopyWithImpl<$Res, _$PostForCreateImpl>
    implements _$$PostForCreateImplCopyWith<$Res> {
  __$$PostForCreateImplCopyWithImpl(
      _$PostForCreateImpl _value, $Res Function(_$PostForCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostForCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentText = null,
    Object? accountId = null,
    Object? imagePaths = freezed,
    Object? permissionPostId = null,
  }) {
    return _then(_$PostForCreateImpl(
      contentText: null == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      imagePaths: freezed == imagePaths
          ? _value._imagePaths
          : imagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      permissionPostId: null == permissionPostId
          ? _value.permissionPostId
          : permissionPostId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostForCreateImpl implements _PostForCreate {
  _$PostForCreateImpl(
      {@JsonKey(name: 'contentText') required this.contentText,
      @JsonKey(name: 'accountId') required this.accountId,
      @JsonKey(name: 'imagePaths') final List<String>? imagePaths,
      @JsonKey(name: 'permissionPostId') required this.permissionPostId})
      : _imagePaths = imagePaths;

  factory _$PostForCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostForCreateImplFromJson(json);

  @override
  @JsonKey(name: 'contentText')
  final String contentText;
  @override
  @JsonKey(name: 'accountId')
  final String accountId;
  final List<String>? _imagePaths;
  @override
  @JsonKey(name: 'imagePaths')
  List<String>? get imagePaths {
    final value = _imagePaths;
    if (value == null) return null;
    if (_imagePaths is EqualUnmodifiableListView) return _imagePaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'permissionPostId')
  final String permissionPostId;

  @override
  String toString() {
    return 'PostForCreate(contentText: $contentText, accountId: $accountId, imagePaths: $imagePaths, permissionPostId: $permissionPostId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostForCreateImpl &&
            (identical(other.contentText, contentText) ||
                other.contentText == contentText) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            const DeepCollectionEquality()
                .equals(other._imagePaths, _imagePaths) &&
            (identical(other.permissionPostId, permissionPostId) ||
                other.permissionPostId == permissionPostId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, contentText, accountId,
      const DeepCollectionEquality().hash(_imagePaths), permissionPostId);

  /// Create a copy of PostForCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostForCreateImplCopyWith<_$PostForCreateImpl> get copyWith =>
      __$$PostForCreateImplCopyWithImpl<_$PostForCreateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostForCreateImplToJson(
      this,
    );
  }
}

abstract class _PostForCreate implements PostForCreate {
  factory _PostForCreate(
      {@JsonKey(name: 'contentText') required final String contentText,
      @JsonKey(name: 'accountId') required final String accountId,
      @JsonKey(name: 'imagePaths') final List<String>? imagePaths,
      @JsonKey(name: 'permissionPostId')
      required final String permissionPostId}) = _$PostForCreateImpl;

  factory _PostForCreate.fromJson(Map<String, dynamic> json) =
      _$PostForCreateImpl.fromJson;

  @override
  @JsonKey(name: 'contentText')
  String get contentText;
  @override
  @JsonKey(name: 'accountId')
  String get accountId;
  @override
  @JsonKey(name: 'imagePaths')
  List<String>? get imagePaths;
  @override
  @JsonKey(name: 'permissionPostId')
  String get permissionPostId;

  /// Create a copy of PostForCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostForCreateImplCopyWith<_$PostForCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
