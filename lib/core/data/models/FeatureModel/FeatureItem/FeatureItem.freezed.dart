// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'FeatureItem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeatureItem _$FeatureItemFromJson(Map<String, dynamic> json) {
  return _FeatureItem.fromJson(json);
}

/// @nodoc
mixin _$FeatureItem {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnailFileName')
  String get thumbnailFileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updated_at => throw _privateConstructorUsedError;

  /// Serializes this FeatureItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeatureItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeatureItemCopyWith<FeatureItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeatureItemCopyWith<$Res> {
  factory $FeatureItemCopyWith(
          FeatureItem value, $Res Function(FeatureItem) then) =
      _$FeatureItemCopyWithImpl<$Res, FeatureItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'thumbnailFileName') String thumbnailFileName,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'updated_at') String? updated_at});
}

/// @nodoc
class _$FeatureItemCopyWithImpl<$Res, $Val extends FeatureItem>
    implements $FeatureItemCopyWith<$Res> {
  _$FeatureItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeatureItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnailFileName = null,
    Object? url = null,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailFileName: null == thumbnailFileName
          ? _value.thumbnailFileName
          : thumbnailFileName // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeatureItemImplCopyWith<$Res>
    implements $FeatureItemCopyWith<$Res> {
  factory _$$FeatureItemImplCopyWith(
          _$FeatureItemImpl value, $Res Function(_$FeatureItemImpl) then) =
      __$$FeatureItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'thumbnailFileName') String thumbnailFileName,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'updated_at') String? updated_at});
}

/// @nodoc
class __$$FeatureItemImplCopyWithImpl<$Res>
    extends _$FeatureItemCopyWithImpl<$Res, _$FeatureItemImpl>
    implements _$$FeatureItemImplCopyWith<$Res> {
  __$$FeatureItemImplCopyWithImpl(
      _$FeatureItemImpl _value, $Res Function(_$FeatureItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeatureItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnailFileName = null,
    Object? url = null,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$FeatureItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailFileName: null == thumbnailFileName
          ? _value.thumbnailFileName
          : thumbnailFileName // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeatureItemImpl implements _FeatureItem {
  _$FeatureItemImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'thumbnailFileName') required this.thumbnailFileName,
      @JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'created_at') this.created_at,
      @JsonKey(name: 'updated_at') this.updated_at});

  factory _$FeatureItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeatureItemImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'thumbnailFileName')
  final String thumbnailFileName;
  @override
  @JsonKey(name: 'url')
  final String url;
  @override
  @JsonKey(name: 'created_at')
  final String? created_at;
  @override
  @JsonKey(name: 'updated_at')
  final String? updated_at;

  @override
  String toString() {
    return 'FeatureItem(id: $id, name: $name, thumbnailFileName: $thumbnailFileName, url: $url, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeatureItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnailFileName, thumbnailFileName) ||
                other.thumbnailFileName == thumbnailFileName) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, thumbnailFileName, url, created_at, updated_at);

  /// Create a copy of FeatureItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeatureItemImplCopyWith<_$FeatureItemImpl> get copyWith =>
      __$$FeatureItemImplCopyWithImpl<_$FeatureItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeatureItemImplToJson(
      this,
    );
  }
}

abstract class _FeatureItem implements FeatureItem {
  factory _FeatureItem(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'thumbnailFileName')
          required final String thumbnailFileName,
          @JsonKey(name: 'url') required final String url,
          @JsonKey(name: 'created_at') final String? created_at,
          @JsonKey(name: 'updated_at') final String? updated_at}) =
      _$FeatureItemImpl;

  factory _FeatureItem.fromJson(Map<String, dynamic> json) =
      _$FeatureItemImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'thumbnailFileName')
  String get thumbnailFileName;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(name: 'created_at')
  String? get created_at;
  @override
  @JsonKey(name: 'updated_at')
  String? get updated_at;

  /// Create a copy of FeatureItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeatureItemImplCopyWith<_$FeatureItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
