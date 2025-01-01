import 'package:flutter_application_1/core/data/models/SendSorrowModel/SendSorrowModelGet.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SoundChillNotifier extends StateNotifier<List<SendSorrowModelGet>> {
  SoundChillNotifier() : super([]);

  void setSound(List<SendSorrowModelGet> data) {
    state = data;
  }

  List<SendSorrowModelGet> getData() {
    return state;
  }
}

final soundChillProvider =
    StateNotifierProvider<SoundChillNotifier, List<SendSorrowModelGet>>(
        (ref) {
  return SoundChillNotifier();
});
