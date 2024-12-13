// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'QuoteSendSorrowGet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuoteSendSorrowGet _$QuoteSendSorrowGetFromJson(Map<String, dynamic> json) {
  return _QuoteSendSorrowGet.fromJson(json);
}

/// @nodoc
mixin _$QuoteSendSorrowGet {
  @JsonKey(name: 'arrayQuote')
  List<String>? get arrayQuote => throw _privateConstructorUsedError;
  @JsonKey(name: 'mentalHeathQuote')
  String get mentalHeathQuote => throw _privateConstructorUsedError;

  /// Serializes this QuoteSendSorrowGet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuoteSendSorrowGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuoteSendSorrowGetCopyWith<QuoteSendSorrowGet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteSendSorrowGetCopyWith<$Res> {
  factory $QuoteSendSorrowGetCopyWith(
          QuoteSendSorrowGet value, $Res Function(QuoteSendSorrowGet) then) =
      _$QuoteSendSorrowGetCopyWithImpl<$Res, QuoteSendSorrowGet>;
  @useResult
  $Res call(
      {@JsonKey(name: 'arrayQuote') List<String>? arrayQuote,
      @JsonKey(name: 'mentalHeathQuote') String mentalHeathQuote});
}

/// @nodoc
class _$QuoteSendSorrowGetCopyWithImpl<$Res, $Val extends QuoteSendSorrowGet>
    implements $QuoteSendSorrowGetCopyWith<$Res> {
  _$QuoteSendSorrowGetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuoteSendSorrowGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrayQuote = freezed,
    Object? mentalHeathQuote = null,
  }) {
    return _then(_value.copyWith(
      arrayQuote: freezed == arrayQuote
          ? _value.arrayQuote
          : arrayQuote // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mentalHeathQuote: null == mentalHeathQuote
          ? _value.mentalHeathQuote
          : mentalHeathQuote // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuoteSendSorrowGetImplCopyWith<$Res>
    implements $QuoteSendSorrowGetCopyWith<$Res> {
  factory _$$QuoteSendSorrowGetImplCopyWith(_$QuoteSendSorrowGetImpl value,
          $Res Function(_$QuoteSendSorrowGetImpl) then) =
      __$$QuoteSendSorrowGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'arrayQuote') List<String>? arrayQuote,
      @JsonKey(name: 'mentalHeathQuote') String mentalHeathQuote});
}

/// @nodoc
class __$$QuoteSendSorrowGetImplCopyWithImpl<$Res>
    extends _$QuoteSendSorrowGetCopyWithImpl<$Res, _$QuoteSendSorrowGetImpl>
    implements _$$QuoteSendSorrowGetImplCopyWith<$Res> {
  __$$QuoteSendSorrowGetImplCopyWithImpl(_$QuoteSendSorrowGetImpl _value,
      $Res Function(_$QuoteSendSorrowGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuoteSendSorrowGet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrayQuote = freezed,
    Object? mentalHeathQuote = null,
  }) {
    return _then(_$QuoteSendSorrowGetImpl(
      arrayQuote: freezed == arrayQuote
          ? _value._arrayQuote
          : arrayQuote // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mentalHeathQuote: null == mentalHeathQuote
          ? _value.mentalHeathQuote
          : mentalHeathQuote // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuoteSendSorrowGetImpl implements _QuoteSendSorrowGet {
  _$QuoteSendSorrowGetImpl(
      {@JsonKey(name: 'arrayQuote') final List<String>? arrayQuote,
      @JsonKey(name: 'mentalHeathQuote') required this.mentalHeathQuote})
      : _arrayQuote = arrayQuote;

  factory _$QuoteSendSorrowGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuoteSendSorrowGetImplFromJson(json);

  final List<String>? _arrayQuote;
  @override
  @JsonKey(name: 'arrayQuote')
  List<String>? get arrayQuote {
    final value = _arrayQuote;
    if (value == null) return null;
    if (_arrayQuote is EqualUnmodifiableListView) return _arrayQuote;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'mentalHeathQuote')
  final String mentalHeathQuote;

  @override
  String toString() {
    return 'QuoteSendSorrowGet(arrayQuote: $arrayQuote, mentalHeathQuote: $mentalHeathQuote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteSendSorrowGetImpl &&
            const DeepCollectionEquality()
                .equals(other._arrayQuote, _arrayQuote) &&
            (identical(other.mentalHeathQuote, mentalHeathQuote) ||
                other.mentalHeathQuote == mentalHeathQuote));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_arrayQuote), mentalHeathQuote);

  /// Create a copy of QuoteSendSorrowGet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteSendSorrowGetImplCopyWith<_$QuoteSendSorrowGetImpl> get copyWith =>
      __$$QuoteSendSorrowGetImplCopyWithImpl<_$QuoteSendSorrowGetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuoteSendSorrowGetImplToJson(
      this,
    );
  }
}

abstract class _QuoteSendSorrowGet implements QuoteSendSorrowGet {
  factory _QuoteSendSorrowGet(
      {@JsonKey(name: 'arrayQuote') final List<String>? arrayQuote,
      @JsonKey(name: 'mentalHeathQuote')
      required final String mentalHeathQuote}) = _$QuoteSendSorrowGetImpl;

  factory _QuoteSendSorrowGet.fromJson(Map<String, dynamic> json) =
      _$QuoteSendSorrowGetImpl.fromJson;

  @override
  @JsonKey(name: 'arrayQuote')
  List<String>? get arrayQuote;
  @override
  @JsonKey(name: 'mentalHeathQuote')
  String get mentalHeathQuote;

  /// Create a copy of QuoteSendSorrowGet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuoteSendSorrowGetImplCopyWith<_$QuoteSendSorrowGetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
