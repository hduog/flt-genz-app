// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CateBlogItem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CateBlogItem _$CateBlogItemFromJson(Map<String, dynamic> json) {
  return _CateBlogItem.fromJson(json);
}

/// @nodoc
mixin _$CateBlogItem {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnailCateBlog')
  String? get thumbnailCateBlog => throw _privateConstructorUsedError;

  /// Serializes this CateBlogItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CateBlogItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CateBlogItemCopyWith<CateBlogItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CateBlogItemCopyWith<$Res> {
  factory $CateBlogItemCopyWith(
          CateBlogItem value, $Res Function(CateBlogItem) then) =
      _$CateBlogItemCopyWithImpl<$Res, CateBlogItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'thumbnailCateBlog') String? thumbnailCateBlog});
}

/// @nodoc
class _$CateBlogItemCopyWithImpl<$Res, $Val extends CateBlogItem>
    implements $CateBlogItemCopyWith<$Res> {
  _$CateBlogItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CateBlogItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? thumbnailCateBlog = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailCateBlog: freezed == thumbnailCateBlog
          ? _value.thumbnailCateBlog
          : thumbnailCateBlog // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CateBlogItemImplCopyWith<$Res>
    implements $CateBlogItemCopyWith<$Res> {
  factory _$$CateBlogItemImplCopyWith(
          _$CateBlogItemImpl value, $Res Function(_$CateBlogItemImpl) then) =
      __$$CateBlogItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'thumbnailCateBlog') String? thumbnailCateBlog});
}

/// @nodoc
class __$$CateBlogItemImplCopyWithImpl<$Res>
    extends _$CateBlogItemCopyWithImpl<$Res, _$CateBlogItemImpl>
    implements _$$CateBlogItemImplCopyWith<$Res> {
  __$$CateBlogItemImplCopyWithImpl(
      _$CateBlogItemImpl _value, $Res Function(_$CateBlogItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CateBlogItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? thumbnailCateBlog = freezed,
  }) {
    return _then(_$CateBlogItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailCateBlog: freezed == thumbnailCateBlog
          ? _value.thumbnailCateBlog
          : thumbnailCateBlog // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CateBlogItemImpl implements _CateBlogItem {
  _$CateBlogItemImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'thumbnailCateBlog') this.thumbnailCateBlog});

  factory _$CateBlogItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CateBlogItemImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'thumbnailCateBlog')
  final String? thumbnailCateBlog;

  @override
  String toString() {
    return 'CateBlogItem(id: $id, title: $title, description: $description, thumbnailCateBlog: $thumbnailCateBlog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CateBlogItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnailCateBlog, thumbnailCateBlog) ||
                other.thumbnailCateBlog == thumbnailCateBlog));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, thumbnailCateBlog);

  /// Create a copy of CateBlogItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CateBlogItemImplCopyWith<_$CateBlogItemImpl> get copyWith =>
      __$$CateBlogItemImplCopyWithImpl<_$CateBlogItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CateBlogItemImplToJson(
      this,
    );
  }
}

abstract class _CateBlogItem implements CateBlogItem {
  factory _CateBlogItem(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'thumbnailCateBlog')
      final String? thumbnailCateBlog}) = _$CateBlogItemImpl;

  factory _CateBlogItem.fromJson(Map<String, dynamic> json) =
      _$CateBlogItemImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'thumbnailCateBlog')
  String? get thumbnailCateBlog;

  /// Create a copy of CateBlogItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CateBlogItemImplCopyWith<_$CateBlogItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
