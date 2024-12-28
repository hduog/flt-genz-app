// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'BlogDetail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogDetail _$BlogDetailFromJson(Map<String, dynamic> json) {
  return _BlogDetail.fromJson(json);
}

/// @nodoc
mixin _$BlogDetail {
  @JsonKey(name: 'blog')
  BlogDataDetail get blog => throw _privateConstructorUsedError;
  @JsonKey(name: 'relatedBlog')
  List<RelatedBlog>? get relatedBlog => throw _privateConstructorUsedError;

  /// Serializes this BlogDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlogDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogDetailCopyWith<BlogDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogDetailCopyWith<$Res> {
  factory $BlogDetailCopyWith(
          BlogDetail value, $Res Function(BlogDetail) then) =
      _$BlogDetailCopyWithImpl<$Res, BlogDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'blog') BlogDataDetail blog,
      @JsonKey(name: 'relatedBlog') List<RelatedBlog>? relatedBlog});

  $BlogDataDetailCopyWith<$Res> get blog;
}

/// @nodoc
class _$BlogDetailCopyWithImpl<$Res, $Val extends BlogDetail>
    implements $BlogDetailCopyWith<$Res> {
  _$BlogDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blog = null,
    Object? relatedBlog = freezed,
  }) {
    return _then(_value.copyWith(
      blog: null == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as BlogDataDetail,
      relatedBlog: freezed == relatedBlog
          ? _value.relatedBlog
          : relatedBlog // ignore: cast_nullable_to_non_nullable
              as List<RelatedBlog>?,
    ) as $Val);
  }

  /// Create a copy of BlogDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BlogDataDetailCopyWith<$Res> get blog {
    return $BlogDataDetailCopyWith<$Res>(_value.blog, (value) {
      return _then(_value.copyWith(blog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlogDetailImplCopyWith<$Res>
    implements $BlogDetailCopyWith<$Res> {
  factory _$$BlogDetailImplCopyWith(
          _$BlogDetailImpl value, $Res Function(_$BlogDetailImpl) then) =
      __$$BlogDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'blog') BlogDataDetail blog,
      @JsonKey(name: 'relatedBlog') List<RelatedBlog>? relatedBlog});

  @override
  $BlogDataDetailCopyWith<$Res> get blog;
}

/// @nodoc
class __$$BlogDetailImplCopyWithImpl<$Res>
    extends _$BlogDetailCopyWithImpl<$Res, _$BlogDetailImpl>
    implements _$$BlogDetailImplCopyWith<$Res> {
  __$$BlogDetailImplCopyWithImpl(
      _$BlogDetailImpl _value, $Res Function(_$BlogDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blog = null,
    Object? relatedBlog = freezed,
  }) {
    return _then(_$BlogDetailImpl(
      blog: null == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as BlogDataDetail,
      relatedBlog: freezed == relatedBlog
          ? _value._relatedBlog
          : relatedBlog // ignore: cast_nullable_to_non_nullable
              as List<RelatedBlog>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogDetailImpl implements _BlogDetail {
  _$BlogDetailImpl(
      {@JsonKey(name: 'blog') required this.blog,
      @JsonKey(name: 'relatedBlog') final List<RelatedBlog>? relatedBlog})
      : _relatedBlog = relatedBlog;

  factory _$BlogDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogDetailImplFromJson(json);

  @override
  @JsonKey(name: 'blog')
  final BlogDataDetail blog;
  final List<RelatedBlog>? _relatedBlog;
  @override
  @JsonKey(name: 'relatedBlog')
  List<RelatedBlog>? get relatedBlog {
    final value = _relatedBlog;
    if (value == null) return null;
    if (_relatedBlog is EqualUnmodifiableListView) return _relatedBlog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BlogDetail(blog: $blog, relatedBlog: $relatedBlog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogDetailImpl &&
            (identical(other.blog, blog) || other.blog == blog) &&
            const DeepCollectionEquality()
                .equals(other._relatedBlog, _relatedBlog));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, blog, const DeepCollectionEquality().hash(_relatedBlog));

  /// Create a copy of BlogDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogDetailImplCopyWith<_$BlogDetailImpl> get copyWith =>
      __$$BlogDetailImplCopyWithImpl<_$BlogDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogDetailImplToJson(
      this,
    );
  }
}

abstract class _BlogDetail implements BlogDetail {
  factory _BlogDetail(
          {@JsonKey(name: 'blog') required final BlogDataDetail blog,
          @JsonKey(name: 'relatedBlog') final List<RelatedBlog>? relatedBlog}) =
      _$BlogDetailImpl;

  factory _BlogDetail.fromJson(Map<String, dynamic> json) =
      _$BlogDetailImpl.fromJson;

  @override
  @JsonKey(name: 'blog')
  BlogDataDetail get blog;
  @override
  @JsonKey(name: 'relatedBlog')
  List<RelatedBlog>? get relatedBlog;

  /// Create a copy of BlogDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogDetailImplCopyWith<_$BlogDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
