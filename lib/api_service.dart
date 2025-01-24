import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:poc_app/data/api_model.dart';

class ApiService {
  final Dio _dio = Dio();

  final String baseUrl = 'https://glo-adm-api.dev.v2.roundone.ph';

  ApiService() {
    _dio.options.baseUrl = baseUrl;
  }

  // The method to fetch the data
  Future<dynamic> fetchData(dynamic data) async {
    try {
      // Perform the GET request
      final response = await _dio.post(
        '/api/v1/mock/partners/v1/authenticate',
        data: data,
      );

      // Check if the response is successful
      if (response.statusCode == 200) {
        // Parse the response JSON into your ApiResponse model
        final apiResponse = response.data;
        return apiResponse;
      } else {
        // Handle non-200 status code
        throw Exception(
            'Failed to load data. Status code: ${response.statusCode}');
      }
    } on DioException catch (e) {
      debugPrint(e.toString());
      // Dio-specific error handling
      if (e.response != null) {
        // Error response from the server
        debugPrint('Error response: ${e.response?.data}');
        throw Exception('Server error: ${e.response?.statusCode}');
      } else {
        // No response, network issue, timeout, etc.
        debugPrint('Error message: ${e.message}');
        throw Exception('Network error: ${e.message}');
      }
    } catch (e) {
      // Any other unexpected error
      debugPrint('Unexpected error: $e');
      throw Exception('Unexpected error: $e');
    }
  }
}
