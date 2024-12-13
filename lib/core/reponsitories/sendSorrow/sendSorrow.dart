import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/data/models/QuoteSendSorrow/QuoteSendSorrowPost.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class SendSorrowRepo {
  final apiService = ApiService();

  Future getAllSoundSendSorrow(String token) async {
    return await apiService.get(
        ApiEndPointConstants.apiGetSound(
            'typeSoundId=${Constants.typeSoundSendSorrowId}'),
        token);
  }

  Future getAllSendSorrowToAI(String token, QuoteSendSorrowPost data) async {
    return await apiService.post(
        ApiEndPointConstants.apiGetQuoteSendSorrow, data, token);
  }
}
