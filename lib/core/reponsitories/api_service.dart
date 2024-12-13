import 'dart:io';

import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();
  Future<Response?> get(String path, String? token,
      {Map<String, dynamic>? queryParameters}) async {
    try {
      print('URL path :' + path);
      _dio.options.headers["Authorization"] =
          token!.isEmpty ? '' : "Bearer $token";
      _dio.options.headers['content-Type'] = 'application/json';
      final response = await _dio.get(path, queryParameters: queryParameters);
      return response;
    } catch (e) {
      print('Unexpected error: $e');
      return null;
    }
  }

  Future<Response?> post(String path, dynamic data, dynamic token) async {
    try {
      print('URL path :' + path);
      if (token != null) {
        print('setting token...');
        _dio.options.headers["Authorization"] =
            token.isEmpty ? '' : "Bearer $token";
      }
      _dio.options.headers['content-Type'] = 'application/json';
      final response = await _dio.post(path, data: data.toJson());
      return response;
    } catch (e) {
      print('Unexpected error: $e');
      return null;
    }
  }

  Future<Response?> put(String path, dynamic data) async {
    try {
      final response = await _dio.put(path, data: data);
      return response;
    } catch (e) {
      print('Unexpected error: $e');
      return null;
    }
  }

  Future<Response?> delete(String path) async {
    try {
      final response = await _dio.delete(path);
      return response;
    } catch (e) {
      print('Unexpected error: $e');
      return null;
    }
  }

  Future<Response?> uploadImage(String path, File image, String token) async {
  try {
    if (!await image.exists()) return null;

    final formData = FormData.fromMap({
      'image': await MultipartFile.fromFile(image.path, filename: image.path.split('/').last),
    });

    _dio.options.headers['Authorization'] = "Bearer $token";
    return await _dio.post(path, data: formData);
  } catch (e) {
    if (e is DioException) {
      print('Error: ${e.response?.statusCode} - ${e.response?.data}');
    } else {
      print('Error: $e');
    }
    return null;
  }
}

 Future<Response?> postWithToken(String path, dynamic data, String token) async {
  try {
    print('URL path: $path');
    _dio.options.headers['Content-Type'] = 'application/json';
    _dio.options.headers["Authorization"] = "Bearer $token";
    final response = await _dio.post(path, data: data.toJson());
    return response;
  } catch (e) {
    print('Unexpected error: $e');
    return null;
  }
}
}
