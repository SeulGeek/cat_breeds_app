import 'package:cat_breeds_app/features/cat_breeds/pages/cat_breed_detail_screen.dart';
import 'package:cat_breeds_app/features/cat_breeds/state/cat_breeds_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/web.dart';

class CatBreedsScreen extends HookConsumerWidget {
  const CatBreedsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(catBreedsProvider(page: 1)).when(
      data: (catBreeds) {
        if (catBreeds.isEmpty) {
          return const Center(child: Text('No cat breeds available.'));
        }
        return ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            final catBreed = catBreeds[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: 40,
                      height: 40,
                      color: Colors.deepPurple.shade100,
                      alignment: Alignment.center,
                      child: Text(
                        '${index + 1}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    catBreed.breed,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  trailing:
                      const Icon(Icons.arrow_forward_ios_rounded, size: 18),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            CatBreedDetailScreen(catBreed: catBreed),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        );
      },
      error: (error, stackTrace) {
        Logger().e('Error fetching cat breeds: $error',
            error: error, stackTrace: stackTrace);
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Please try again in a moment.'),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  icon: const Icon(Icons.refresh),
                  label: const Text('Retry'),
                  onPressed: () {
                    // ignore: unused_result
                    ref.refresh(catBreedsProvider(page: 1));
                  },
                ),
              ],
            ),
          ),
        );
      },
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
