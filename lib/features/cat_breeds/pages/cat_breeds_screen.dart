import 'package:cat_breeds_app/features/cat_breeds/pages/cat_breed_detail_screen.dart';
import 'package:cat_breeds_app/features/cat_breeds/repository/cat_breeds_repository.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CatBreedsScreen extends HookConsumerWidget {
  const CatBreedsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat Breeds'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Cat Breed ${index + 1}'),
            onTap: () async {
              // TODO: テスト用で実装したものなので呼ばれる場所を修正する
              final catBreedsRepository = ref.read(catBreedsRepositoryProvider);
              final catBreeds = await catBreedsRepository.getCatBreeds();
              print('APIテスト結果: $catBreeds');
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const CatBreedDetailScreen(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
