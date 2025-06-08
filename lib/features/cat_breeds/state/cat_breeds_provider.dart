import 'package:cat_breeds_app/features/cat_breeds/model/cat_breed.dart';
import 'package:cat_breeds_app/features/cat_breeds/repository/cat_breeds_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cat_breeds_provider.g.dart';

@riverpod
Future<List<CatBreed>> catBreeds(Ref ref, {int? page}) {
  return ref.read(catBreedsRepositoryProvider).getCatBreeds(page: page);
}