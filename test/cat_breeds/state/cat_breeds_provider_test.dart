import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cat_breeds_app/features/cat_breeds/state/cat_breeds_provider.dart';
import 'package:cat_breeds_app/features/cat_breeds/model/cat_breed.dart';

void main() {
  test("""
  GIVEN: catBreedsProvider
  WHEN: requesting page 1
  THEN: it should return a list of 10 CatBreed objects
  """, () async {
    // GIVEN
    final container = ProviderContainer();
    addTearDown(container.dispose);

    // WHEN
    final breeds = await container.read(catBreedsProvider(page: 1).future);

    // THEN
    expect(breeds.length, 10);
    expect(breeds, isA<List<CatBreed>>());
  });
}
