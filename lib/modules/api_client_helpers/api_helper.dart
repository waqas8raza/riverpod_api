import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_api/modules/api_client_helpers/auth_interceptor.dart';

class ApiHelper {
  // static const String apiUrl = 'http://54.190.192.105:9131/api/V1';

  static const String apiUrl = 'http://qafworldapp.qafworld.com/api/';

  static final client = Dio(
    BaseOptions(
      headers: {"Content-Type": "application/json"},
      baseUrl: apiUrl,
      connectTimeout: const Duration(seconds: 120000),
      receiveTimeout: const Duration(seconds: 120000),
    ),
  )..interceptors.add(AuthorizationInterceptor());
}

final apiClient = Provider((ref) {
  assert(() {
    return true;
  }());

  return ApiHelper.client;
});
