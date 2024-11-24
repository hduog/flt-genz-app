// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CommentBlog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentBlog _$CommentBlogFromJson(Map<String, dynamic> json) {
  return _CommentBlog.fromJson(json);
}

/// @nodoc
mixin _$CommentBlog {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avata')
  String? get avata => throw _privateConstructorUsedError;

  /// Serializes this CommentBlog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentBlog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentBlogCopyWith<CommentBlog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentBlogCopyWith<$Res> {
  factory $CommentBlogCopyWith(
          CommentBlog value, $Res Function(CommentBlog) then) =
      _$CommentBlogCopyWithImpl<$Res, CommentBlog>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'fullName') String? fullName,
      @JsonKey(name: 'avata') String? avata});
}

/// @nodoc
class _$CommentBlogCopyWithImpl<$Res, $Val extends CommentBlog>
    implements $CommentBlogCopyWith<$Res> {
  _$CommentBlogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentBlog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = freezed,
    Object? avata = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avata: freezed == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentBlogImplCopyWith<$Res>
    implements $CommentBlogCopyWith<$Res> {
  factory _$$CommentBlogImplCopyWith(
          _$CommentBlogImpl value, $Res Function(_$CommentBlogImpl) then) =
      __$$CommentBlogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'fullName') String? fullName,
      @JsonKey(name: 'avata') String? avata});
}

/// @nodoc
class __$$CommentBlogImplCopyWithImpl<$Res>
    extends _$CommentBlogCopyWithImpl<$Res, _$CommentBlogImpl>
    implements _$$CommentBlogImplCopyWith<$Res> {
  __$$CommentBlogImplCopyWithImpl(
      _$CommentBlogImpl _value, $Res Function(_$CommentBlogImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentBlog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = freezed,
    Object? avata = freezed,
  }) {
    return _then(_$CommentBlogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avata: freezed == avata
          ? _value.avata
          : avata // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentBlogImpl implements _CommentBlog {
  _$CommentBlogImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'fullName') this.fullName,
      @JsonKey(name: 'avata') this.avata});

  factory _$CommentBlogImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentBlogImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'fullName')
  final String? fullName;
  @override
  @JsonKey(name: 'avata')
  final String? avata;

  @override
  String toString() {
    return 'CommentBlog(id: $id, fullName: $fullName, avata: $avata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentBlogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avata, avata) || other.avata == avata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, avata);

  /// Create a copy of CommentBlog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentBlogImplCopyWith<_$CommentBlogImpl> get copyWith =>
      __$$CommentBlogImplCopyWithImpl<_$CommentBlogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentBlogImplToJson(
      this,
    );
  }
}

abstract class _CommentBlog implements CommentBlog {
  factory _CommentBlog(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'fullName') final String? fullName,
      @JsonKey(name: 'avata') final String? avata}) = _$CommentBlogImpl;

  factory _CommentBlog.fromJson(Map<String, dynamic> json) =
      _$CommentBlogImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'fullName')
  String? get fullName;
  @override
  @JsonKey(name: 'avata')
  String? get avata;

  /// Create a copy of CommentBlog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentBlogImplCopyWith<_$CommentBlogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
