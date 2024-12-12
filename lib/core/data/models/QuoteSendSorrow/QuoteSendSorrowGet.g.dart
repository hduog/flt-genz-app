// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QuoteSendSorrowGet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuoteSendSorrowGetImpl _$$QuoteSendSorrowGetImplFromJson(
        Map<String, dynamic> json) =>
    _$QuoteSendSorrowGetImpl(
      arrayQuote: (json['arrayQuote'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      mentalHeathQuote: json['mentalHeathQuote'] as String,
    );

Map<String, dynamic> _$$QuoteSendSorrowGetImplToJson(
        _$QuoteSendSorrowGetImpl instance) =>
    <String, dynamic>{
      'arrayQuote': instance.arrayQuote,
      'mentalHeathQuote': instance.mentalHeathQuote,
    };
