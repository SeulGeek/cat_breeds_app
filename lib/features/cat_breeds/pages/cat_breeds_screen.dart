import 'package:cat_breeds_app/features/cat_breed_detail/pages/cat_breed_detail_screen.dart';
import 'package:cat_breeds_app/features/cat_breeds/state/cat_breeds_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/web.dart';
import 'package:cat_breeds_app/theme/spacing.dart';

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
              padding: const EdgeInsets.symmetric(
                horizontal: Spacing.sp16,
                vertical: Spacing.sp8,
              ),
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Spacing.sp16),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(Spacing.sp16),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(Spacing.sp12),
                    child: Container(
                      width: Spacing.sp40,
                      height: Spacing.sp40,
                      color: Colors.deepPurple.shade100,
                      alignment: Alignment.center,
                      child: Text(
                        '${index + 1}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: Spacing.sp20,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    catBreed.breed,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Spacing.sp18,
                    ),
                  ),
                  trailing:
                      const Icon(Icons.arrow_forward_ios_rounded, size: Spacing.sp18),
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
            padding: const EdgeInsets.all(Spacing.sp16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Please try again in a moment.'),
                const SizedBox(height: Spacing.sp16),
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
