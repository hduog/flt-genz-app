// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'PostSharedInfor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostSharedInfor _$PostSharedInforFromJson(Map<String, dynamic> json) {
  return _PostSharedInfor.fromJson(json);
}

/// @nodoc
mixin _$PostSharedInfor {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<ImageGet>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentText')
  String? get contentText => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get created_at => throw _privateConstructorUsedError;

  /// Serializes this PostSharedInfor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostSharedInfor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostSharedInforCopyWith<PostSharedInfor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostSharedInforCopyWith<$Res> {
  factory $PostSharedInforCopyWith(
          PostSharedInfor value, $Res Function(PostSharedInfor) then) =
      _$PostSharedInforCopyWithImpl<$Res, PostSharedInfor>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'images') List<ImageGet>? images,
      @JsonKey(name: 'contentText') String? contentText,
      @JsonKey(name: 'created_at') String? created_at});
}

/// @nodoc
class _$PostSharedInforCopyWithImpl<$Res, $Val extends PostSharedInfor>
    implements $PostSharedInforCopyWith<$Res> {
  _$PostSharedInforCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostSharedInfor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = freezed,
    Object? contentText = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageGet>?,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostSharedInforImplCopyWith<$Res>
    implements $PostSharedInforCopyWith<$Res> {
  factory _$$PostSharedInforImplCopyWith(_$PostSharedInforImpl value,
          $Res Function(_$PostSharedInforImpl) then) =
      __$$PostSharedInforImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'images') List<ImageGet>? images,
      @JsonKey(name: 'contentText') String? contentText,
      @JsonKey(name: 'created_at') String? created_at});
}

/// @nodoc
class __$$PostSharedInforImplCopyWithImpl<$Res>
    extends _$PostSharedInforCopyWithImpl<$Res, _$PostSharedInforImpl>
    implements _$$PostSharedInforImplCopyWith<$Res> {
  __$$PostSharedInforImplCopyWithImpl(
      _$PostSharedInforImpl _value, $Res Function(_$PostSharedInforImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostSharedInfor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? images = freezed,
    Object? contentText = freezed,
    Object? created_at = freezed,
  }) {
    return _then(_$PostSharedInforImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageGet>?,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostSharedInforImpl implements _PostSharedInfor {
  _$PostSharedInforImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'images') final List<ImageGet>? images,
      @JsonKey(name: 'contentText') this.contentText,
      @JsonKey(name: 'created_at') this.created_at})
      : _images = images;

  factory _$PostSharedInforImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostSharedInforImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
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
  @JsonKey(name: 'contentText')
  final String? contentText;
  @override
  @JsonKey(name: 'created_at')
  final String? created_at;

  @override
  String toString() {
    return 'PostSharedInfor(id: $id, images: $images, contentText: $contentText, created_at: $created_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostSharedInforImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.contentText, contentText) ||
                other.contentText == contentText) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_images), contentText, created_at);

  /// Create a copy of PostSharedInfor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostSharedInforImplCopyWith<_$PostSharedInforImpl> get copyWith =>
      __$$PostSharedInforImplCopyWithImpl<_$PostSharedInforImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostSharedInforImplToJson(
      this,
    );
  }
}

abstract class _PostSharedInfor implements PostSharedInfor {
  factory _PostSharedInfor(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'images') final List<ImageGet>? images,
          @JsonKey(name: 'contentText') final String? contentText,
          @JsonKey(name: 'created_at') final String? created_at}) =
      _$PostSharedInforImpl;

  factory _PostSharedInfor.fromJson(Map<String, dynamic> json) =
      _$PostSharedInforImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'images')
  List<ImageGet>? get images;
  @override
  @JsonKey(name: 'contentText')
  String? get contentText;
  @override
  @JsonKey(name: 'created_at')
  String? get created_at;

  /// Create a copy of PostSharedInfor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostSharedInforImplCopyWith<_$PostSharedInforImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
