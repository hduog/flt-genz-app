// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'HotBlogItemForGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HotBlogItemForGet _$HotBlogItemForGetFromJson(Map<String, dynamic> json) {
  return _HotBlogItemForGet.fromJson(json);
}

/// @nodoc
mixin _$HotBlogItemForGet {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'views')
  int get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnailBlog')
  String get thumbnailBlog => throw _privateConstructorUsedError;
  @JsonKey(name: 'cateBlog')
  List<CateBlog> get cateBlog => throw _privateConstructorUsedError;
  @JsonKey(name: 'account')
  AccountBlog get account => throw _privateConstructorUsedError;

  /// Serializes this HotBlogItemForGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotBlogItemForGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotBlogItemForGetCopyWith<HotBlogItemForGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotBlogItemForGetCopyWith<$Res> {
  factory $HotBlogItemForGetCopyWith(
          HotBlogItemForGet value, $Res Function(HotBlogItemForGet) then) =
      _$HotBlogItemForGetCopyWithImpl<$Res, HotBlogItemForGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'views') int views,
      @JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'thumbnailBlog') String thumbnailBlog,
      @JsonKey(name: 'cateBlog') List<CateBlog> cateBlog,
      @JsonKey(name: 'account') AccountBlog account});

  $AccountBlogCopyWith<$Res> get account;
}

/// @nodoc
class _$HotBlogItemForGetCopyWithImpl<$Res, $Val extends HotBlogItemForGet>
    implements $HotBlogItemForGetCopyWith<$Res> {
  _$HotBlogItemForGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotBlogItemForGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = freezed,
    Object? views = null,
    Object? rating = freezed,
    Object? thumbnailBlog = null,
    Object? cateBlog = null,
    Object? account = null,
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
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailBlog: null == thumbnailBlog
          ? _value.thumbnailBlog
          : thumbnailBlog // ignore: cast_nullable_to_non_nullable
              as String,
      cateBlog: null == cateBlog
          ? _value.cateBlog
          : cateBlog // ignore: cast_nullable_to_non_nullable
              as List<CateBlog>,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountBlog,
    ) as $Val);
  }

  /// Create a copy of HotBlogItemForGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountBlogCopyWith<$Res> get account {
    return $AccountBlogCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotBlogItemForGetImplCopyWith<$Res>
    implements $HotBlogItemForGetCopyWith<$Res> {
  factory _$$HotBlogItemForGetImplCopyWith(_$HotBlogItemForGetImpl value,
          $Res Function(_$HotBlogItemForGetImpl) then) =
      __$$HotBlogItemForGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String? body,
      @JsonKey(name: 'views') int views,
      @JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'thumbnailBlog') String thumbnailBlog,
      @JsonKey(name: 'cateBlog') List<CateBlog> cateBlog,
      @JsonKey(name: 'account') AccountBlog account});

  @override
  $AccountBlogCopyWith<$Res> get account;
}

/// @nodoc
class __$$HotBlogItemForGetImplCopyWithImpl<$Res>
    extends _$HotBlogItemForGetCopyWithImpl<$Res, _$HotBlogItemForGetImpl>
    implements _$$HotBlogItemForGetImplCopyWith<$Res> {
  __$$HotBlogItemForGetImplCopyWithImpl(_$HotBlogItemForGetImpl _value,
      $Res Function(_$HotBlogItemForGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of HotBlogItemForGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = freezed,
    Object? views = null,
    Object? rating = freezed,
    Object? thumbnailBlog = null,
    Object? cateBlog = null,
    Object? account = null,
  }) {
    return _then(_$HotBlogItemForGetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailBlog: null == thumbnailBlog
          ? _value.thumbnailBlog
          : thumbnailBlog // ignore: cast_nullable_to_non_nullable
              as String,
      cateBlog: null == cateBlog
          ? _value._cateBlog
          : cateBlog // ignore: cast_nullable_to_non_nullable
              as List<CateBlog>,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountBlog,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotBlogItemForGetImpl implements _HotBlogItemForGet {
  _$HotBlogItemForGetImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'views') required this.views,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'thumbnailBlog') required this.thumbnailBlog,
      @JsonKey(name: 'cateBlog') required final List<CateBlog> cateBlog,
      @JsonKey(name: 'account') required this.account})
      : _cateBlog = cateBlog;

  factory _$HotBlogItemForGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotBlogItemForGetImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'body')
  final String? body;
  @override
  @JsonKey(name: 'views')
  final int views;
  @override
  @JsonKey(name: 'rating')
  final int? rating;
  @override
  @JsonKey(name: 'thumbnailBlog')
  final String thumbnailBlog;
  final List<CateBlog> _cateBlog;
  @override
  @JsonKey(name: 'cateBlog')
  List<CateBlog> get cateBlog {
    if (_cateBlog is EqualUnmodifiableListView) return _cateBlog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cateBlog);
  }

  @override
  @JsonKey(name: 'account')
  final AccountBlog account;

  @override
  String toString() {
    return 'HotBlogItemForGet(id: $id, title: $title, body: $body, views: $views, rating: $rating, thumbnailBlog: $thumbnailBlog, cateBlog: $cateBlog, account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotBlogItemForGetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.thumbnailBlog, thumbnailBlog) ||
                other.thumbnailBlog == thumbnailBlog) &&
            const DeepCollectionEquality().equals(other._cateBlog, _cateBlog) &&
            (identical(other.account, account) || other.account == account));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, body, views, rating,
      thumbnailBlog, const DeepCollectionEquality().hash(_cateBlog), account);

  /// Create a copy of HotBlogItemForGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotBlogItemForGetImplCopyWith<_$HotBlogItemForGetImpl> get copyWith =>
      __$$HotBlogItemForGetImplCopyWithImpl<_$HotBlogItemForGetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotBlogItemForGetImplToJson(
      this,
    );
  }
}

abstract class _HotBlogItemForGet implements HotBlogItemForGet {
  factory _HotBlogItemForGet(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'body') final String? body,
          @JsonKey(name: 'views') required final int views,
          @JsonKey(name: 'rating') final int? rating,
          @JsonKey(name: 'thumbnailBlog') required final String thumbnailBlog,
          @JsonKey(name: 'cateBlog') required final List<CateBlog> cateBlog,
          @JsonKey(name: 'account') required final AccountBlog account}) =
      _$HotBlogItemForGetImpl;

  factory _HotBlogItemForGet.fromJson(Map<String, dynamic> json) =
      _$HotBlogItemForGetImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(name: 'views')
  int get views;
  @override
  @JsonKey(name: 'rating')
  int? get rating;
  @override
  @JsonKey(name: 'thumbnailBlog')
  String get thumbnailBlog;
  @override
  @JsonKey(name: 'cateBlog')
  List<CateBlog> get cateBlog;
  @override
  @JsonKey(name: 'account')
  AccountBlog get account;

  /// Create a copy of HotBlogItemForGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotBlogItemForGetImplCopyWith<_$HotBlogItemForGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
