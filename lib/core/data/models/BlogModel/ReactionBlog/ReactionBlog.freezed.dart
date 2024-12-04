// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ReactionBlog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReactionBlog _$ReactionBlogFromJson(Map<String, dynamic> json) {
  return _ReactionBlog.fromJson(json);
}

/// @nodoc
mixin _$ReactionBlog {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'typeName')
  String? get typeName => throw _privateConstructorUsedError;

  /// Serializes this ReactionBlog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReactionBlog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReactionBlogCopyWith<ReactionBlog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionBlogCopyWith<$Res> {
  factory $ReactionBlogCopyWith(
          ReactionBlog value, $Res Function(ReactionBlog) then) =
      _$ReactionBlogCopyWithImpl<$Res, ReactionBlog>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'typeName') String? typeName});
}

/// @nodoc
class _$ReactionBlogCopyWithImpl<$Res, $Val extends ReactionBlog>
    implements $ReactionBlogCopyWith<$Res> {
  _$ReactionBlogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReactionBlog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReactionBlogImplCopyWith<$Res>
    implements $ReactionBlogCopyWith<$Res> {
  factory _$$ReactionBlogImplCopyWith(
          _$ReactionBlogImpl value, $Res Function(_$ReactionBlogImpl) then) =
      __$$ReactionBlogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'typeName') String? typeName});
}

/// @nodoc
class __$$ReactionBlogImplCopyWithImpl<$Res>
    extends _$ReactionBlogCopyWithImpl<$Res, _$ReactionBlogImpl>
    implements _$$ReactionBlogImplCopyWith<$Res> {
  __$$ReactionBlogImplCopyWithImpl(
      _$ReactionBlogImpl _value, $Res Function(_$ReactionBlogImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReactionBlog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeName = freezed,
  }) {
    return _then(_$ReactionBlogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      typeName: freezed == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReactionBlogImpl implements _ReactionBlog {
  _$ReactionBlogImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'typeName') this.typeName});

  factory _$ReactionBlogImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReactionBlogImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'typeName')
  final String? typeName;

  @override
  String toString() {
    return 'ReactionBlog(id: $id, typeName: $typeName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReactionBlogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, typeName);

  /// Create a copy of ReactionBlog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReactionBlogImplCopyWith<_$ReactionBlogImpl> get copyWith =>
      __$$ReactionBlogImplCopyWithImpl<_$ReactionBlogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReactionBlogImplToJson(
      this,
    );
  }
}

abstract class _ReactionBlog implements ReactionBlog {
  factory _ReactionBlog(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'typeName') final String? typeName}) = _$ReactionBlogImpl;

  factory _ReactionBlog.fromJson(Map<String, dynamic> json) =
      _$ReactionBlogImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'typeName')
  String? get typeName;

  /// Create a copy of ReactionBlog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReactionBlogImplCopyWith<_$ReactionBlogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
