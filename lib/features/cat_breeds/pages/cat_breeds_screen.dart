import 'package:cat_breeds_app/features/cat_breeds/pages/cat_breed_detail_screen.dart';
import 'package:cat_breeds_app/features/cat_breeds/state/cat_breeds_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CatBreedsScreen extends HookConsumerWidget {
  const CatBreedsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // NOTES: Pagination is not implemented in this example because of the requirement
    return ref.watch(catBreedsProvider(page: 1)).when(
      data: (catBreeds) {
        // TODO: Scaffold should be moved to the top level widget
        return Scaffold(
          appBar: AppBar(
            title: const Text('Cat Breeds'),
          ),
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              final catBreed = catBreeds[index];
              return ListTile(
                title: Text(catBreed.breed),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CatBreedDetailScreen(catBreed: catBreed),
                    ),
                  );
                },
              );
            },
          ),
        );
      },
      error: (error, stackTrace) {
        // TODO: Scaffold should be moved to the top level widget
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: Center(child: Text('Error: $error')), // TODO: check it again
        );
      },
      loading: () {
        // TODO: Scaffold should be moved to the top level widget
        return Scaffold(
          appBar: AppBar(
            title: const Text(''),
          ),
          body: const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
