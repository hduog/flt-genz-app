import 'package:flutter_application_1/core/data/models/SendSorrowModel/SendSorrowModelGet.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SendSorrowSoundNotifier extends StateNotifier<List<SendSorrowModelGet>> {
  SendSorrowSoundNotifier() : super([]);

  void setSound(List<SendSorrowModelGet> data) {
    state = data;
  }

  List<SendSorrowModelGet> getData() {
    return state;
  }
}

final soundSendSorrowProvider =
    StateNotifierProvider<SendSorrowSoundNotifier, List<SendSorrowModelGet>>(
        (ref) {
  return SendSorrowSoundNotifier();
});
