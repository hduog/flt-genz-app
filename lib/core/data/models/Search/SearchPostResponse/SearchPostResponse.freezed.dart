// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'SearchPostResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchPostResponse _$SearchPostResponseFromJson(Map<String, dynamic> json) {
  return _SearchPostResponse.fromJson(json);
}

/// @nodoc
mixin _$SearchPostResponse {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'contentText')
  String? get contentText => throw _privateConstructorUsedError;
  @JsonKey(name: 'account')
  AccountSearchResponse get account => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<ImageSearchResponse>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get created_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updated_at => throw _privateConstructorUsedError;

  /// Serializes this SearchPostResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchPostResponseCopyWith<SearchPostResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPostResponseCopyWith<$Res> {
  factory $SearchPostResponseCopyWith(
          SearchPostResponse value, $Res Function(SearchPostResponse) then) =
      _$SearchPostResponseCopyWithImpl<$Res, SearchPostResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'contentText') String? contentText,
      @JsonKey(name: 'account') AccountSearchResponse account,
      @JsonKey(name: 'images') List<ImageSearchResponse>? images,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'updated_at') String? updated_at});

  $AccountSearchResponseCopyWith<$Res> get account;
}

/// @nodoc
class _$SearchPostResponseCopyWithImpl<$Res, $Val extends SearchPostResponse>
    implements $SearchPostResponseCopyWith<$Res> {
  _$SearchPostResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contentText = freezed,
    Object? account = null,
    Object? images = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountSearchResponse,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageSearchResponse>?,
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

  /// Create a copy of SearchPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountSearchResponseCopyWith<$Res> get account {
    return $AccountSearchResponseCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchPostResponseImplCopyWith<$Res>
    implements $SearchPostResponseCopyWith<$Res> {
  factory _$$SearchPostResponseImplCopyWith(_$SearchPostResponseImpl value,
          $Res Function(_$SearchPostResponseImpl) then) =
      __$$SearchPostResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'contentText') String? contentText,
      @JsonKey(name: 'account') AccountSearchResponse account,
      @JsonKey(name: 'images') List<ImageSearchResponse>? images,
      @JsonKey(name: 'created_at') String? created_at,
      @JsonKey(name: 'updated_at') String? updated_at});

  @override
  $AccountSearchResponseCopyWith<$Res> get account;
}

/// @nodoc
class __$$SearchPostResponseImplCopyWithImpl<$Res>
    extends _$SearchPostResponseCopyWithImpl<$Res, _$SearchPostResponseImpl>
    implements _$$SearchPostResponseImplCopyWith<$Res> {
  __$$SearchPostResponseImplCopyWithImpl(_$SearchPostResponseImpl _value,
      $Res Function(_$SearchPostResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? contentText = freezed,
    Object? account = null,
    Object? images = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$SearchPostResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      contentText: freezed == contentText
          ? _value.contentText
          : contentText // ignore: cast_nullable_to_non_nullable
              as String?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountSearchResponse,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageSearchResponse>?,
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
class _$SearchPostResponseImpl implements _SearchPostResponse {
  _$SearchPostResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'contentText') this.contentText,
      @JsonKey(name: 'account') required this.account,
      @JsonKey(name: 'images') final List<ImageSearchResponse>? images,
      @JsonKey(name: 'created_at') this.created_at,
      @JsonKey(name: 'updated_at') this.updated_at})
      : _images = images;

  factory _$SearchPostResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchPostResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'contentText')
  final String? contentText;
  @override
  @JsonKey(name: 'account')
  final AccountSearchResponse account;
  final List<ImageSearchResponse>? _images;
  @override
  @JsonKey(name: 'images')
  List<ImageSearchResponse>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final String? created_at;
  @override
  @JsonKey(name: 'updated_at')
  final String? updated_at;

  @override
  String toString() {
    return 'SearchPostResponse(id: $id, contentText: $contentText, account: $account, images: $images, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPostResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.contentText, contentText) ||
                other.contentText == contentText) &&
            (identical(other.account, account) || other.account == account) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, contentText, account,
      const DeepCollectionEquality().hash(_images), created_at, updated_at);

  /// Create a copy of SearchPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPostResponseImplCopyWith<_$SearchPostResponseImpl> get copyWith =>
      __$$SearchPostResponseImplCopyWithImpl<_$SearchPostResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchPostResponseImplToJson(
      this,
    );
  }
}

abstract class _SearchPostResponse implements SearchPostResponse {
  factory _SearchPostResponse(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'contentText') final String? contentText,
      @JsonKey(name: 'account') required final AccountSearchResponse account,
      @JsonKey(name: 'images') final List<ImageSearchResponse>? images,
      @JsonKey(name: 'created_at') final String? created_at,
      @JsonKey(name: 'updated_at')
      final String? updated_at}) = _$SearchPostResponseImpl;

  factory _SearchPostResponse.fromJson(Map<String, dynamic> json) =
      _$SearchPostResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'contentText')
  String? get contentText;
  @override
  @JsonKey(name: 'account')
  AccountSearchResponse get account;
  @override
  @JsonKey(name: 'images')
  List<ImageSearchResponse>? get images;
  @override
  @JsonKey(name: 'created_at')
  String? get created_at;
  @override
  @JsonKey(name: 'updated_at')
  String? get updated_at;

  /// Create a copy of SearchPostResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchPostResponseImplCopyWith<_$SearchPostResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
