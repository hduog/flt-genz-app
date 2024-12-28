// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'BlogDataDetail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogDataDetail _$BlogDataDetailFromJson(Map<String, dynamic> json) {
  return _BlogDataDetail.fromJson(json);
}

/// @nodoc
mixin _$BlogDataDetail {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnailBlog')
  String? get thumbnailBlog => throw _privateConstructorUsedError;
  @JsonKey(name: 'reactions')
  List<ReactionBlog>? get reactions => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'views')
  int? get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'cateBlog')
  List<CateBlog>? get cateBlog => throw _privateConstructorUsedError;
  @JsonKey(name: 'account')
  AccountBlog? get account => throw _privateConstructorUsedError;
  @JsonKey(name: 'comments')
  List<CommentBlog>? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'linkToResourceHTML')
  String? get linkToResourceHTML => throw _privateConstructorUsedError;
  @JsonKey(name: 'menuType')
  int? get menuType => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalLike')
  int? get totalLike => throw _privateConstructorUsedError;

  /// Serializes this BlogDataDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlogDataDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogDataDetailCopyWith<BlogDataDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogDataDetailCopyWith<$Res> {
  factory $BlogDataDetailCopyWith(
          BlogDataDetail value, $Res Function(BlogDataDetail) then) =
      _$BlogDataDetailCopyWithImpl<$Res, BlogDataDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'thumbnailBlog') String? thumbnailBlog,
      @JsonKey(name: 'reactions') List<ReactionBlog>? reactions,
      @JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'views') int? views,
      @JsonKey(name: 'cateBlog') List<CateBlog>? cateBlog,
      @JsonKey(name: 'account') AccountBlog? account,
      @JsonKey(name: 'comments') List<CommentBlog>? comments,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'linkToResourceHTML') String? linkToResourceHTML,
      @JsonKey(name: 'menuType') int? menuType,
      @JsonKey(name: 'totalLike') int? totalLike});

  $AccountBlogCopyWith<$Res>? get account;
}

/// @nodoc
class _$BlogDataDetailCopyWithImpl<$Res, $Val extends BlogDataDetail>
    implements $BlogDataDetailCopyWith<$Res> {
  _$BlogDataDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogDataDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? body = freezed,
    Object? thumbnailBlog = freezed,
    Object? reactions = freezed,
    Object? rating = freezed,
    Object? views = freezed,
    Object? cateBlog = freezed,
    Object? account = freezed,
    Object? comments = freezed,
    Object? created_at = freezed,
    Object? linkToResourceHTML = freezed,
    Object? menuType = freezed,
    Object? totalLike = freezed,
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
      reactions: freezed == reactions
          ? _value.reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as List<ReactionBlog>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      cateBlog: freezed == cateBlog
          ? _value.cateBlog
          : cateBlog // ignore: cast_nullable_to_non_nullable
              as List<CateBlog>?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountBlog?,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentBlog>?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      linkToResourceHTML: freezed == linkToResourceHTML
          ? _value.linkToResourceHTML
          : linkToResourceHTML // ignore: cast_nullable_to_non_nullable
              as String?,
      menuType: freezed == menuType
          ? _value.menuType
          : menuType // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLike: freezed == totalLike
          ? _value.totalLike
          : totalLike // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of BlogDataDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountBlogCopyWith<$Res>? get account {
    if (_value.account == null) {
      return null;
    }

    return $AccountBlogCopyWith<$Res>(_value.account!, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlogDataDetailImplCopyWith<$Res>
    implements $BlogDataDetailCopyWith<$Res> {
  factory _$$BlogDataDetailImplCopyWith(_$BlogDataDetailImpl value,
          $Res Function(_$BlogDataDetailImpl) then) =
      __$$BlogDataDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'thumbnailBlog') String? thumbnailBlog,
      @JsonKey(name: 'reactions') List<ReactionBlog>? reactions,
      @JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'views') int? views,
      @JsonKey(name: 'cateBlog') List<CateBlog>? cateBlog,
      @JsonKey(name: 'account') AccountBlog? account,
      @JsonKey(name: 'comments') List<CommentBlog>? comments,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'linkToResourceHTML') String? linkToResourceHTML,
      @JsonKey(name: 'menuType') int? menuType,
      @JsonKey(name: 'totalLike') int? totalLike});

  @override
  $AccountBlogCopyWith<$Res>? get account;
}

/// @nodoc
class __$$BlogDataDetailImplCopyWithImpl<$Res>
    extends _$BlogDataDetailCopyWithImpl<$Res, _$BlogDataDetailImpl>
    implements _$$BlogDataDetailImplCopyWith<$Res> {
  __$$BlogDataDetailImplCopyWithImpl(
      _$BlogDataDetailImpl _value, $Res Function(_$BlogDataDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogDataDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? body = freezed,
    Object? thumbnailBlog = freezed,
    Object? reactions = freezed,
    Object? rating = freezed,
    Object? views = freezed,
    Object? cateBlog = freezed,
    Object? account = freezed,
    Object? comments = freezed,
    Object? created_at = freezed,
    Object? linkToResourceHTML = freezed,
    Object? menuType = freezed,
    Object? totalLike = freezed,
  }) {
    return _then(_$BlogDataDetailImpl(
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
      reactions: freezed == reactions
          ? _value._reactions
          : reactions // ignore: cast_nullable_to_non_nullable
              as List<ReactionBlog>?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      cateBlog: freezed == cateBlog
          ? _value._cateBlog
          : cateBlog // ignore: cast_nullable_to_non_nullable
              as List<CateBlog>?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountBlog?,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentBlog>?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      linkToResourceHTML: freezed == linkToResourceHTML
          ? _value.linkToResourceHTML
          : linkToResourceHTML // ignore: cast_nullable_to_non_nullable
              as String?,
      menuType: freezed == menuType
          ? _value.menuType
          : menuType // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLike: freezed == totalLike
          ? _value.totalLike
          : totalLike // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogDataDetailImpl implements _BlogDataDetail {
  _$BlogDataDetailImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'thumbnailBlog') this.thumbnailBlog,
      @JsonKey(name: 'reactions') final List<ReactionBlog>? reactions,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'views') this.views,
      @JsonKey(name: 'cateBlog') final List<CateBlog>? cateBlog,
      @JsonKey(name: 'account') this.account,
      @JsonKey(name: 'comments') final List<CommentBlog>? comments,
      @JsonKey(name: 'created_at') this.created_at,
      @JsonKey(name: 'linkToResourceHTML') this.linkToResourceHTML,
      @JsonKey(name: 'menuType') this.menuType,
      @JsonKey(name: 'totalLike') this.totalLike})
      : _reactions = reactions,
        _cateBlog = cateBlog,
        _comments = comments;

  factory _$BlogDataDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogDataDetailImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'body')
  final String? body;
  @override
  @JsonKey(name: 'thumbnailBlog')
  final String? thumbnailBlog;
  final List<ReactionBlog>? _reactions;
  @override
  @JsonKey(name: 'reactions')
  List<ReactionBlog>? get reactions {
    final value = _reactions;
    if (value == null) return null;
    if (_reactions is EqualUnmodifiableListView) return _reactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'rating')
  final int? rating;
  @override
  @JsonKey(name: 'views')
  final int? views;
  final List<CateBlog>? _cateBlog;
  @override
  @JsonKey(name: 'cateBlog')
  List<CateBlog>? get cateBlog {
    final value = _cateBlog;
    if (value == null) return null;
    if (_cateBlog is EqualUnmodifiableListView) return _cateBlog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'account')
  final AccountBlog? account;
  final List<CommentBlog>? _comments;
  @override
  @JsonKey(name: 'comments')
  List<CommentBlog>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final String? created_at;
  @override
  @JsonKey(name: 'linkToResourceHTML')
  final String? linkToResourceHTML;
  @override
  @JsonKey(name: 'menuType')
  final int? menuType;
  @override
  @JsonKey(name: 'totalLike')
  final int? totalLike;

  @override
  String toString() {
    return 'BlogDataDetail(id: $id, title: $title, body: $body, thumbnailBlog: $thumbnailBlog, reactions: $reactions, rating: $rating, views: $views, cateBlog: $cateBlog, account: $account, comments: $comments, created_at: $created_at, linkToResourceHTML: $linkToResourceHTML, menuType: $menuType, totalLike: $totalLike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogDataDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.thumbnailBlog, thumbnailBlog) ||
                other.thumbnailBlog == thumbnailBlog) &&
            const DeepCollectionEquality()
                .equals(other._reactions, _reactions) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.views, views) || other.views == views) &&
            const DeepCollectionEquality().equals(other._cateBlog, _cateBlog) &&
            (identical(other.account, account) || other.account == account) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.linkToResourceHTML, linkToResourceHTML) ||
                other.linkToResourceHTML == linkToResourceHTML) &&
            (identical(other.menuType, menuType) ||
                other.menuType == menuType) &&
            (identical(other.totalLike, totalLike) ||
                other.totalLike == totalLike));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      body,
      thumbnailBlog,
      const DeepCollectionEquality().hash(_reactions),
      rating,
      views,
      const DeepCollectionEquality().hash(_cateBlog),
      account,
      const DeepCollectionEquality().hash(_comments),
      created_at,
      linkToResourceHTML,
      menuType,
      totalLike);

  /// Create a copy of BlogDataDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogDataDetailImplCopyWith<_$BlogDataDetailImpl> get copyWith =>
      __$$BlogDataDetailImplCopyWithImpl<_$BlogDataDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogDataDetailImplToJson(
      this,
    );
  }
}

abstract class _BlogDataDetail implements BlogDataDetail {
  factory _BlogDataDetail(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'body') final String? body,
      @JsonKey(name: 'thumbnailBlog') final String? thumbnailBlog,
      @JsonKey(name: 'reactions') final List<ReactionBlog>? reactions,
      @JsonKey(name: 'rating') final int? rating,
      @JsonKey(name: 'views') final int? views,
      @JsonKey(name: 'cateBlog') final List<CateBlog>? cateBlog,
      @JsonKey(name: 'account') final AccountBlog? account,
      @JsonKey(name: 'comments') final List<CommentBlog>? comments,
      @JsonKey(name: 'created_at') final String? created_at,
      @JsonKey(name: 'linkToResourceHTML') final String? linkToResourceHTML,
      @JsonKey(name: 'menuType') final int? menuType,
      @JsonKey(name: 'totalLike') final int? totalLike}) = _$BlogDataDetailImpl;

  factory _BlogDataDetail.fromJson(Map<String, dynamic> json) =
      _$BlogDataDetailImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(name: 'thumbnailBlog')
  String? get thumbnailBlog;
  @override
  @JsonKey(name: 'reactions')
  List<ReactionBlog>? get reactions;
  @override
  @JsonKey(name: 'rating')
  int? get rating;
  @override
  @JsonKey(name: 'views')
  int? get views;
  @override
  @JsonKey(name: 'cateBlog')
  List<CateBlog>? get cateBlog;
  @override
  @JsonKey(name: 'account')
  AccountBlog? get account;
  @override
  @JsonKey(name: 'comments')
  List<CommentBlog>? get comments;
  @override
  @JsonKey(name: 'created_at')
  String? get created_at;
  @override
  @JsonKey(name: 'linkToResourceHTML')
  String? get linkToResourceHTML;
  @override
  @JsonKey(name: 'menuType')
  int? get menuType;
  @override
  @JsonKey(name: 'totalLike')
  int? get totalLike;

  /// Create a copy of BlogDataDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogDataDetailImplCopyWith<_$BlogDataDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
