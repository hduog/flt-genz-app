import 'package:flutter_application_1/core/data/models/FeatureModel/FeatureItem/FeatureItem.dart';
import 'package:flutter_application_1/core/reponsitories/features/Features.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FeatureService {
  final featureRepo = FeaturesRepo();

  Future<List<FeatureItem>?> getAllFeature(WidgetRef ref) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String token = prefs.getString('access_token') ?? '';

      if (token.isNotEmpty) {
        final response = await featureRepo.getAllFeature(token);
        if (response != null && response.statusCode == 200) {
          List<dynamic> data = response.data; 
          return data.map((item) => FeatureItem.fromJson(item)).toList();
        } else {
          return null;
        }
      } else {
        return null;
      }
    } catch (e) {
      print('Error fetching: $e');
      return null;
    }
  }
}
