import 'package:dio/dio.dart';

import '../../core/network/api_service.dart';
import '../models/landing_model.dart';

class LandingService {
  final ApiService _apiService = ApiService();

  Future<List<LandingModel>> fetchLandingData() async {
    try {
      Response response = await _apiService.get("landing");
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        print("Landing: API: $data");
        return data.map((json) => LandingModel.fromJson(json)).toList();
      } else {
        throw Exception("Failed to load landing data");
      }
    } catch (e) {
      print("Dio Error: $e");
      if (e is DioException) {
        print("Dio Error Code: ${e.response?.statusCode}");
        print("Dio Error Message: ${e.message}");
      }
      throw Exception("Failed to load landing data: $e");
    }
  }
}
