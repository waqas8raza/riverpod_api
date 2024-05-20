import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_api/modules/api_apis/service/app_api_service.dart';
import 'package:riverpod_api/modules/api_client_helpers/api_helper.dart';

abstract class ApiService {
  ApiService(this.apiClient);
  final Dio apiClient;
}

final apiServiceProvider =
    Provider<ApiService>((ref) => AppApiService(ref.read(apiClient)));
