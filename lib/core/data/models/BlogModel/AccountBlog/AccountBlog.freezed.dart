// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'AccountBlog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountBlog _$AccountBlogFromJson(Map<String, dynamic> json) {
  return _AccountBlog.fromJson(json);
}

/// @nodoc
mixin _$AccountBlog {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullName')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avata')
  String? get avata => throw _privateConstructorUsedError;

  /// Serializes this AccountBlog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountBlog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountBlogCopyWith<AccountBlog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountBlogCopyWith<$Res> {
  factory $AccountBlogCopyWith(
          AccountBlog value, $Res Function(AccountBlog) then) =
      _$AccountBlogCopyWithImpl<$Res, AccountBlog>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'fullName') String? fullName,
      @JsonKey(name: 'avata') String? avata});
}

/// @nodoc
class _$AccountBlogCopyWithImpl<$Res, $Val extends AccountBlog>
    implements $AccountBlogCopyWith<$Res> {
  _$AccountBlogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountBlog
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
abstract class _$$AccountBlogImplCopyWith<$Res>
    implements $AccountBlogCopyWith<$Res> {
  factory _$$AccountBlogImplCopyWith(
          _$AccountBlogImpl value, $Res Function(_$AccountBlogImpl) then) =
      __$$AccountBlogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'fullName') String? fullName,
      @JsonKey(name: 'avata') String? avata});
}

/// @nodoc
class __$$AccountBlogImplCopyWithImpl<$Res>
    extends _$AccountBlogCopyWithImpl<$Res, _$AccountBlogImpl>
    implements _$$AccountBlogImplCopyWith<$Res> {
  __$$AccountBlogImplCopyWithImpl(
      _$AccountBlogImpl _value, $Res Function(_$AccountBlogImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountBlog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = freezed,
    Object? avata = freezed,
  }) {
    return _then(_$AccountBlogImpl(
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
class _$AccountBlogImpl implements _AccountBlog {
  _$AccountBlogImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'fullName') this.fullName,
      @JsonKey(name: 'avata') this.avata});

  factory _$AccountBlogImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountBlogImplFromJson(json);

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
    return 'AccountBlog(id: $id, fullName: $fullName, avata: $avata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountBlogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avata, avata) || other.avata == avata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, avata);

  /// Create a copy of AccountBlog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountBlogImplCopyWith<_$AccountBlogImpl> get copyWith =>
      __$$AccountBlogImplCopyWithImpl<_$AccountBlogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountBlogImplToJson(
      this,
    );
  }
}

abstract class _AccountBlog implements AccountBlog {
  factory _AccountBlog(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'fullName') final String? fullName,
      @JsonKey(name: 'avata') final String? avata}) = _$AccountBlogImpl;

  factory _AccountBlog.fromJson(Map<String, dynamic> json) =
      _$AccountBlogImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'fullName')
  String? get fullName;
  @override
  @JsonKey(name: 'avata')
  String? get avata;

  /// Create a copy of AccountBlog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountBlogImplCopyWith<_$AccountBlogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
