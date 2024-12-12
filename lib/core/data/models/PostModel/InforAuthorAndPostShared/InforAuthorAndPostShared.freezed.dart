// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'InforAuthorAndPostShared.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InforAuthorAndPostShared _$InforAuthorAndPostSharedFromJson(
    Map<String, dynamic> json) {
  return _InforAuthorAndPostShared.fromJson(json);
}

/// @nodoc
mixin _$InforAuthorAndPostShared {
  @JsonKey(name: 'author')
  AuthorGet get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'postInf')
  PostSharedInfor get postInf => throw _privateConstructorUsedError;

  /// Serializes this InforAuthorAndPostShared to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InforAuthorAndPostShared
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InforAuthorAndPostSharedCopyWith<InforAuthorAndPostShared> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InforAuthorAndPostSharedCopyWith<$Res> {
  factory $InforAuthorAndPostSharedCopyWith(InforAuthorAndPostShared value,
          $Res Function(InforAuthorAndPostShared) then) =
      _$InforAuthorAndPostSharedCopyWithImpl<$Res, InforAuthorAndPostShared>;
  @useResult
  $Res call(
      {@JsonKey(name: 'author') AuthorGet author,
      @JsonKey(name: 'postInf') PostSharedInfor postInf});

  $AuthorGetCopyWith<$Res> get author;
  $PostSharedInforCopyWith<$Res> get postInf;
}

/// @nodoc
class _$InforAuthorAndPostSharedCopyWithImpl<$Res,
        $Val extends InforAuthorAndPostShared>
    implements $InforAuthorAndPostSharedCopyWith<$Res> {
  _$InforAuthorAndPostSharedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InforAuthorAndPostShared
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? postInf = null,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorGet,
      postInf: null == postInf
          ? _value.postInf
          : postInf // ignore: cast_nullable_to_non_nullable
              as PostSharedInfor,
    ) as $Val);
  }

  /// Create a copy of InforAuthorAndPostShared
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorGetCopyWith<$Res> get author {
    return $AuthorGetCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }

  /// Create a copy of InforAuthorAndPostShared
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostSharedInforCopyWith<$Res> get postInf {
    return $PostSharedInforCopyWith<$Res>(_value.postInf, (value) {
      return _then(_value.copyWith(postInf: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InforAuthorAndPostSharedImplCopyWith<$Res>
    implements $InforAuthorAndPostSharedCopyWith<$Res> {
  factory _$$InforAuthorAndPostSharedImplCopyWith(
          _$InforAuthorAndPostSharedImpl value,
          $Res Function(_$InforAuthorAndPostSharedImpl) then) =
      __$$InforAuthorAndPostSharedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'author') AuthorGet author,
      @JsonKey(name: 'postInf') PostSharedInfor postInf});

  @override
  $AuthorGetCopyWith<$Res> get author;
  @override
  $PostSharedInforCopyWith<$Res> get postInf;
}

/// @nodoc
class __$$InforAuthorAndPostSharedImplCopyWithImpl<$Res>
    extends _$InforAuthorAndPostSharedCopyWithImpl<$Res,
        _$InforAuthorAndPostSharedImpl>
    implements _$$InforAuthorAndPostSharedImplCopyWith<$Res> {
  __$$InforAuthorAndPostSharedImplCopyWithImpl(
      _$InforAuthorAndPostSharedImpl _value,
      $Res Function(_$InforAuthorAndPostSharedImpl) _then)
      : super(_value, _then);

  /// Create a copy of InforAuthorAndPostShared
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? postInf = null,
  }) {
    return _then(_$InforAuthorAndPostSharedImpl(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorGet,
      postInf: null == postInf
          ? _value.postInf
          : postInf // ignore: cast_nullable_to_non_nullable
              as PostSharedInfor,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InforAuthorAndPostSharedImpl implements _InforAuthorAndPostShared {
  _$InforAuthorAndPostSharedImpl(
      {@JsonKey(name: 'author') required this.author,
      @JsonKey(name: 'postInf') required this.postInf});

  factory _$InforAuthorAndPostSharedImpl.fromJson(Map<String, dynamic> json) =>
      _$$InforAuthorAndPostSharedImplFromJson(json);

  @override
  @JsonKey(name: 'author')
  final AuthorGet author;
  @override
  @JsonKey(name: 'postInf')
  final PostSharedInfor postInf;

  @override
  String toString() {
    return 'InforAuthorAndPostShared(author: $author, postInf: $postInf)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InforAuthorAndPostSharedImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.postInf, postInf) || other.postInf == postInf));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, author, postInf);

  /// Create a copy of InforAuthorAndPostShared
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InforAuthorAndPostSharedImplCopyWith<_$InforAuthorAndPostSharedImpl>
      get copyWith => __$$InforAuthorAndPostSharedImplCopyWithImpl<
          _$InforAuthorAndPostSharedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InforAuthorAndPostSharedImplToJson(
      this,
    );
  }
}

abstract class _InforAuthorAndPostShared implements InforAuthorAndPostShared {
  factory _InforAuthorAndPostShared(
          {@JsonKey(name: 'author') required final AuthorGet author,
          @JsonKey(name: 'postInf') required final PostSharedInfor postInf}) =
      _$InforAuthorAndPostSharedImpl;

  factory _InforAuthorAndPostShared.fromJson(Map<String, dynamic> json) =
      _$InforAuthorAndPostSharedImpl.fromJson;

  @override
  @JsonKey(name: 'author')
  AuthorGet get author;
  @override
  @JsonKey(name: 'postInf')
  PostSharedInfor get postInf;

  /// Create a copy of InforAuthorAndPostShared
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InforAuthorAndPostSharedImplCopyWith<_$InforAuthorAndPostSharedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
