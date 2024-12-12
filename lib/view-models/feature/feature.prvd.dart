import 'package:flutter_application_1/core/data/models/FeatureModel/FeatureItem/FeatureItem.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FeatureNotifier extends StateNotifier<List<FeatureItem>> {
  FeatureNotifier() : super([]);

  void setFeature(List<FeatureItem> item) {
    state = item;
  }

  List<FeatureItem> getFeature() {
    return state;
  }
}

final featureProvider = StateNotifierProvider<FeatureNotifier, List<FeatureItem>>((ref) {
  return FeatureNotifier();
});
