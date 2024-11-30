// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CateBlog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CateBlog _$CateBlogFromJson(Map<String, dynamic> json) {
  return _CateBlog.fromJson(json);
}

/// @nodoc
mixin _$CateBlog {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnailCateBlog')
  String? get thumbnailBlog => throw _privateConstructorUsedError;

  /// Serializes this CateBlog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CateBlog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CateBlogCopyWith<CateBlog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CateBlogCopyWith<$Res> {
  factory $CateBlogCopyWith(CateBlog value, $Res Function(CateBlog) then) =
      _$CateBlogCopyWithImpl<$Res, CateBlog>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? body,
      @JsonKey(name: 'thumbnailCateBlog') String? thumbnailBlog});
}

/// @nodoc
class _$CateBlogCopyWithImpl<$Res, $Val extends CateBlog>
    implements $CateBlogCopyWith<$Res> {
  _$CateBlogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CateBlog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? body = freezed,
    Object? thumbnailBlog = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailBlog: freezed == thumbnailBlog
          ? _value.thumbnailBlog
          : thumbnailBlog // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CateBlogImplCopyWith<$Res>
    implements $CateBlogCopyWith<$Res> {
  factory _$$CateBlogImplCopyWith(
          _$CateBlogImpl value, $Res Function(_$CateBlogImpl) then) =
      __$$CateBlogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? body,
      @JsonKey(name: 'thumbnailCateBlog') String? thumbnailBlog});
}

/// @nodoc
class __$$CateBlogImplCopyWithImpl<$Res>
    extends _$CateBlogCopyWithImpl<$Res, _$CateBlogImpl>
    implements _$$CateBlogImplCopyWith<$Res> {
  __$$CateBlogImplCopyWithImpl(
      _$CateBlogImpl _value, $Res Function(_$CateBlogImpl) _then)
      : super(_value, _then);

  /// Create a copy of CateBlog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? body = freezed,
    Object? thumbnailBlog = freezed,
  }) {
    return _then(_$CateBlogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailBlog: freezed == thumbnailBlog
          ? _value.thumbnailBlog
          : thumbnailBlog // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CateBlogImpl implements _CateBlog {
  _$CateBlogImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.body,
      @JsonKey(name: 'thumbnailCateBlog') this.thumbnailBlog});

  factory _$CateBlogImpl.fromJson(Map<String, dynamic> json) =>
      _$$CateBlogImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? body;
  @override
  @JsonKey(name: 'thumbnailCateBlog')
  final String? thumbnailBlog;

  @override
  String toString() {
    return 'CateBlog(id: $id, title: $title, body: $body, thumbnailBlog: $thumbnailBlog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CateBlogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.thumbnailBlog, thumbnailBlog) ||
                other.thumbnailBlog == thumbnailBlog));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, body, thumbnailBlog);

  /// Create a copy of CateBlog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CateBlogImplCopyWith<_$CateBlogImpl> get copyWith =>
      __$$CateBlogImplCopyWithImpl<_$CateBlogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CateBlogImplToJson(
      this,
    );
  }
}

abstract class _CateBlog implements CateBlog {
  factory _CateBlog(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'description') final String? body,
          @JsonKey(name: 'thumbnailCateBlog') final String? thumbnailBlog}) =
      _$CateBlogImpl;

  factory _CateBlog.fromJson(Map<String, dynamic> json) =
      _$CateBlogImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get body;
  @override
  @JsonKey(name: 'thumbnailCateBlog')
  String? get thumbnailBlog;

  /// Create a copy of CateBlog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CateBlogImplCopyWith<_$CateBlogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
