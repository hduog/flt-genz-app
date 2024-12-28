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
  @JsonKey(name: 'is_liked')
  bool? get is_liked => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalComment')
  int? get totalComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalReaction')
  int? get totalReaction => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalShare')
  int? get totalShare => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updated_at => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_share')
  bool? get is_share => throw _privateConstructorUsedError;
  @JsonKey(name: 'permissionPost')
  PermissionPostGet get permissionPost => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_recent')
  List<CommentForGet>? get comment_recent => throw _privateConstructorUsedError;
  @JsonKey(name: 'infoAuthorAndPost')
  InforAuthorAndPostShared? get infoAuthorAndPost =>
      throw _privateConstructorUsedError;

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
      @JsonKey(name: 'images') List<ImageGet>? images,
      @JsonKey(name: 'is_liked') bool? is_liked,
      @JsonKey(name: 'totalComment') int? totalComment,
      @JsonKey(name: 'totalReaction') int? totalReaction,
      @JsonKey(name: 'totalShare') int? totalShare,
      @JsonKey(name: 'updated_at') String? updated_at,
      @JsonKey(name: 'is_share') bool? is_share,
      @JsonKey(name: 'permissionPost') PermissionPostGet permissionPost,
      @JsonKey(name: 'comment_recent') List<CommentForGet>? comment_recent,
      @JsonKey(name: 'infoAuthorAndPost')
      InforAuthorAndPostShared? infoAuthorAndPost});

  $AuthorGetCopyWith<$Res> get account;
  $PermissionPostGetCopyWith<$Res> get permissionPost;
  $InforAuthorAndPostSharedCopyWith<$Res>? get infoAuthorAndPost;
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
    Object? is_liked = freezed,
    Object? totalComment = freezed,
    Object? totalReaction = freezed,
    Object? totalShare = freezed,
    Object? updated_at = freezed,
    Object? is_share = freezed,
    Object? permissionPost = null,
    Object? comment_recent = freezed,
    Object? infoAuthorAndPost = freezed,
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
      is_liked: freezed == is_liked
          ? _value.is_liked
          : is_liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalComment: freezed == totalComment
          ? _value.totalComment
          : totalComment // ignore: cast_nullable_to_non_nullable
              as int?,
      totalReaction: freezed == totalReaction
          ? _value.totalReaction
          : totalReaction // ignore: cast_nullable_to_non_nullable
              as int?,
      totalShare: freezed == totalShare
          ? _value.totalShare
          : totalShare // ignore: cast_nullable_to_non_nullable
              as int?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      is_share: freezed == is_share
          ? _value.is_share
          : is_share // ignore: cast_nullable_to_non_nullable
              as bool?,
      permissionPost: null == permissionPost
          ? _value.permissionPost
          : permissionPost // ignore: cast_nullable_to_non_nullable
              as PermissionPostGet,
      comment_recent: freezed == comment_recent
          ? _value.comment_recent
          : comment_recent // ignore: cast_nullable_to_non_nullable
              as List<CommentForGet>?,
      infoAuthorAndPost: freezed == infoAuthorAndPost
          ? _value.infoAuthorAndPost
          : infoAuthorAndPost // ignore: cast_nullable_to_non_nullable
              as InforAuthorAndPostShared?,
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

  /// Create a copy of DataGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PermissionPostGetCopyWith<$Res> get permissionPost {
    return $PermissionPostGetCopyWith<$Res>(_value.permissionPost, (value) {
      return _then(_value.copyWith(permissionPost: value) as $Val);
    });
  }

  /// Create a copy of DataGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InforAuthorAndPostSharedCopyWith<$Res>? get infoAuthorAndPost {
    if (_value.infoAuthorAndPost == null) {
      return null;
    }

    return $InforAuthorAndPostSharedCopyWith<$Res>(_value.infoAuthorAndPost!,
        (value) {
      return _then(_value.copyWith(infoAuthorAndPost: value) as $Val);
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
      @JsonKey(name: 'images') List<ImageGet>? images,
      @JsonKey(name: 'is_liked') bool? is_liked,
      @JsonKey(name: 'totalComment') int? totalComment,
      @JsonKey(name: 'totalReaction') int? totalReaction,
      @JsonKey(name: 'totalShare') int? totalShare,
      @JsonKey(name: 'updated_at') String? updated_at,
      @JsonKey(name: 'is_share') bool? is_share,
      @JsonKey(name: 'permissionPost') PermissionPostGet permissionPost,
      @JsonKey(name: 'comment_recent') List<CommentForGet>? comment_recent,
      @JsonKey(name: 'infoAuthorAndPost')
      InforAuthorAndPostShared? infoAuthorAndPost});

  @override
  $AuthorGetCopyWith<$Res> get account;
  @override
  $PermissionPostGetCopyWith<$Res> get permissionPost;
  @override
  $InforAuthorAndPostSharedCopyWith<$Res>? get infoAuthorAndPost;
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
    Object? is_liked = freezed,
    Object? totalComment = freezed,
    Object? totalReaction = freezed,
    Object? totalShare = freezed,
    Object? updated_at = freezed,
    Object? is_share = freezed,
    Object? permissionPost = null,
    Object? comment_recent = freezed,
    Object? infoAuthorAndPost = freezed,
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
      is_liked: freezed == is_liked
          ? _value.is_liked
          : is_liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalComment: freezed == totalComment
          ? _value.totalComment
          : totalComment // ignore: cast_nullable_to_non_nullable
              as int?,
      totalReaction: freezed == totalReaction
          ? _value.totalReaction
          : totalReaction // ignore: cast_nullable_to_non_nullable
              as int?,
      totalShare: freezed == totalShare
          ? _value.totalShare
          : totalShare // ignore: cast_nullable_to_non_nullable
              as int?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      is_share: freezed == is_share
          ? _value.is_share
          : is_share // ignore: cast_nullable_to_non_nullable
              as bool?,
      permissionPost: null == permissionPost
          ? _value.permissionPost
          : permissionPost // ignore: cast_nullable_to_non_nullable
              as PermissionPostGet,
      comment_recent: freezed == comment_recent
          ? _value._comment_recent
          : comment_recent // ignore: cast_nullable_to_non_nullable
              as List<CommentForGet>?,
      infoAuthorAndPost: freezed == infoAuthorAndPost
          ? _value.infoAuthorAndPost
          : infoAuthorAndPost // ignore: cast_nullable_to_non_nullable
              as InforAuthorAndPostShared?,
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
      @JsonKey(name: 'images') final List<ImageGet>? images,
      @JsonKey(name: 'is_liked') this.is_liked,
      @JsonKey(name: 'totalComment') this.totalComment,
      @JsonKey(name: 'totalReaction') this.totalReaction,
      @JsonKey(name: 'totalShare') this.totalShare,
      @JsonKey(name: 'updated_at') this.updated_at,
      @JsonKey(name: 'is_share') this.is_share,
      @JsonKey(name: 'permissionPost') required this.permissionPost,
      @JsonKey(name: 'comment_recent')
      final List<CommentForGet>? comment_recent,
      @JsonKey(name: 'infoAuthorAndPost') this.infoAuthorAndPost})
      : _images = images,
        _comment_recent = comment_recent;

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
  @JsonKey(name: 'is_liked')
  final bool? is_liked;
  @override
  @JsonKey(name: 'totalComment')
  final int? totalComment;
  @override
  @JsonKey(name: 'totalReaction')
  final int? totalReaction;
  @override
  @JsonKey(name: 'totalShare')
  final int? totalShare;
  @override
  @JsonKey(name: 'updated_at')
  final String? updated_at;
  @override
  @JsonKey(name: 'is_share')
  final bool? is_share;
  @override
  @JsonKey(name: 'permissionPost')
  final PermissionPostGet permissionPost;
  final List<CommentForGet>? _comment_recent;
  @override
  @JsonKey(name: 'comment_recent')
  List<CommentForGet>? get comment_recent {
    final value = _comment_recent;
    if (value == null) return null;
    if (_comment_recent is EqualUnmodifiableListView) return _comment_recent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'infoAuthorAndPost')
  final InforAuthorAndPostShared? infoAuthorAndPost;

  @override
  String toString() {
    return 'DataGet(account: $account, accountId: $accountId, contentText: $contentText, created_at: $created_at, id: $id, isSave: $isSave, images: $images, is_liked: $is_liked, totalComment: $totalComment, totalReaction: $totalReaction, totalShare: $totalShare, updated_at: $updated_at, is_share: $is_share, permissionPost: $permissionPost, comment_recent: $comment_recent, infoAuthorAndPost: $infoAuthorAndPost)';
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
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.is_liked, is_liked) ||
                other.is_liked == is_liked) &&
            (identical(other.totalComment, totalComment) ||
                other.totalComment == totalComment) &&
            (identical(other.totalReaction, totalReaction) ||
                other.totalReaction == totalReaction) &&
            (identical(other.totalShare, totalShare) ||
                other.totalShare == totalShare) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.is_share, is_share) ||
                other.is_share == is_share) &&
            (identical(other.permissionPost, permissionPost) ||
                other.permissionPost == permissionPost) &&
            const DeepCollectionEquality()
                .equals(other._comment_recent, _comment_recent) &&
            (identical(other.infoAuthorAndPost, infoAuthorAndPost) ||
                other.infoAuthorAndPost == infoAuthorAndPost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      account,
      accountId,
      contentText,
      created_at,
      id,
      isSave,
      const DeepCollectionEquality().hash(_images),
      is_liked,
      totalComment,
      totalReaction,
      totalShare,
      updated_at,
      is_share,
      permissionPost,
      const DeepCollectionEquality().hash(_comment_recent),
      infoAuthorAndPost);

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
      @JsonKey(name: 'images') final List<ImageGet>? images,
      @JsonKey(name: 'is_liked') final bool? is_liked,
      @JsonKey(name: 'totalComment') final int? totalComment,
      @JsonKey(name: 'totalReaction') final int? totalReaction,
      @JsonKey(name: 'totalShare') final int? totalShare,
      @JsonKey(name: 'updated_at') final String? updated_at,
      @JsonKey(name: 'is_share') final bool? is_share,
      @JsonKey(name: 'permissionPost')
      required final PermissionPostGet permissionPost,
      @JsonKey(name: 'comment_recent')
      final List<CommentForGet>? comment_recent,
      @JsonKey(name: 'infoAuthorAndPost')
      final InforAuthorAndPostShared? infoAuthorAndPost}) = _$DataGetImpl;

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
  @override
  @JsonKey(name: 'is_liked')
  bool? get is_liked;
  @override
  @JsonKey(name: 'totalComment')
  int? get totalComment;
  @override
  @JsonKey(name: 'totalReaction')
  int? get totalReaction;
  @override
  @JsonKey(name: 'totalShare')
  int? get totalShare;
  @override
  @JsonKey(name: 'updated_at')
  String? get updated_at;
  @override
  @JsonKey(name: 'is_share')
  bool? get is_share;
  @override
  @JsonKey(name: 'permissionPost')
  PermissionPostGet get permissionPost;
  @override
  @JsonKey(name: 'comment_recent')
  List<CommentForGet>? get comment_recent;
  @override
  @JsonKey(name: 'infoAuthorAndPost')
  InforAuthorAndPostShared? get infoAuthorAndPost;

  /// Create a copy of DataGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataGetImplCopyWith<_$DataGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
