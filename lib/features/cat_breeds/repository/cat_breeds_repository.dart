import 'package:cat_breeds_app/features/cat_breeds/model/cat_breed.dart';
import 'package:cat_breeds_app/features/cat_breeds/repository/cat_breeds_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cat_breeds_repository.g.dart';

abstract class CatBreedsRepository {
  Future<List<CatBreed>> getCatBreeds({
    int? page,
  });
}

@riverpod
CatBreedsRepository catBreedsRepository(Ref ref) {
  return CatBreedsRepositoryImpl(ref: ref);
}
