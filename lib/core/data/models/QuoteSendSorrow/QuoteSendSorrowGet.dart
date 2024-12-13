import 'package:freezed_annotation/freezed_annotation.dart';

part 'QuoteSendSorrowGet.freezed.dart';
part 'QuoteSendSorrowGet.g.dart';

@freezed
class QuoteSendSorrowGet with _$QuoteSendSorrowGet {
  factory QuoteSendSorrowGet({
    @JsonKey(name: 'arrayQuote') List<String>? arrayQuote,
    @JsonKey(name: 'mentalHeathQuote') required String mentalHeathQuote,
  }) = _QuoteSendSorrowGet;
  factory QuoteSendSorrowGet.fromJson(Map<String, Object?> json) =>
      _$QuoteSendSorrowGetFromJson(json);
}
