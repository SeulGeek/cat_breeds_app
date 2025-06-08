import 'package:cat_breeds_app/api/api_client.dart';
import 'package:cat_breeds_app/api/dio_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client_provider.g.dart';

@riverpod
ApiClient apiClient(Ref ref) {
  return ApiClient(
    ref.read(dioProvider),
    baseUrl: 'https://catfact.ninja/',
  );
}