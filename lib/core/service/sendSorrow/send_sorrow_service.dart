import 'package:flutter_application_1/core/data/models/QuoteSendSorrow/QuoteSendSorrowGet.dart';
import 'package:flutter_application_1/core/data/models/QuoteSendSorrow/QuoteSendSorrowPost.dart';
import 'package:flutter_application_1/core/data/models/SendSorrowModel/SendSorrowModelGet.dart';
import 'package:flutter_application_1/core/reponsitories/sendSorrow/sendSorrow.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SendSorrowService {
  final sendSorrowRepo = SendSorrowRepo();

  Future<List<SendSorrowModelGet>?> getAllSoundSendSorrow() async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response = await sendSorrowRepo.getAllSoundSendSorrow(token);
      print(response);
      if (response?.statusCode == 200) {
        List<SendSorrowModelGet> list = (response.data as List<dynamic>)
            .map((item) =>
                SendSorrowModelGet.fromJson(item as Map<String, dynamic>))
            .toList();

        return list;
      }
    }
    return null;
  }

  Future<List<SendSorrowModelGet>?> getAllSoundNatural() async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response = await sendSorrowRepo.getAllSoundNatural(token);
      print(response);
      if (response?.statusCode == 200) {
        List<SendSorrowModelGet> list = (response.data as List<dynamic>)
            .map((item) =>
                SendSorrowModelGet.fromJson(item as Map<String, dynamic>))
            .toList();

        return list;
      }
    }
    return null;
  }

  Future<QuoteSendSorrowGet?> sendSorrowToAI(QuoteSendSorrowPost sorrow) async {
    final prefs = await SharedPreferences.getInstance();
    final String token = prefs.getString('access_token') ?? '';
    if (token.isNotEmpty) {
      final response = await sendSorrowRepo.getAllSendSorrowToAI(token, sorrow);
      print(response);
      if (response?.statusCode == 201) {
        return QuoteSendSorrowGet.fromJson(response.data);
      }
    }
    return null;
  }
}
