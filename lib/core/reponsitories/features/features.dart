import 'package:flutter_application_1/core/constants/end_point.dart';
import 'package:flutter_application_1/core/reponsitories/api_service.dart';

class FeaturesRepo {
  final apiService = ApiService();

  Future getAllFeature(String token) async {
    return await apiService.get(ApiEndPointConstants.apiGetAllFeatures, token);
  }

}