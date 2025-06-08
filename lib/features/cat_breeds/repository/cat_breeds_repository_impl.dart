import 'package:cat_breeds_app/api/api_client_provider.dart';
import 'package:cat_breeds_app/features/cat_breeds/model/cat_breed.dart';
import 'package:cat_breeds_app/features/cat_breeds/repository/cat_breeds_repository.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CatBreedsRepositoryImpl implements CatBreedsRepository {
  CatBreedsRepositoryImpl({required this.ref});

  final Ref ref;
  late final _api = ref.read(apiClientProvider);

  @override
  Future<List<CatBreed>> getCatBreeds({int? page}) async {
    try {
      final result = await _api.getCatBreeds(page: page);
      if (result.data.isEmpty) {
        return [];
      } else {
        return result.data
            .take(10)
            .map((e) => CatBreed.fromJson(e.toJson()))
            .toList();
      }
    } on DioException catch (e) {
      final error = e.error;
      if (error != null) {
        throw error;
      } else {
        rethrow;
      }
    }
  }
}
