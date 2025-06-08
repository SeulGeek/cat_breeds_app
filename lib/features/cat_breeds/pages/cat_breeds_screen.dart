import 'package:cat_breeds_app/features/cat_breeds/pages/cat_breed_detail_screen.dart';
import 'package:cat_breeds_app/features/cat_breeds/state/cat_breeds_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CatBreedsScreen extends HookConsumerWidget {
  const CatBreedsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(catBreedsProvider(page: 1)).when(
      data: (catBreeds) {
        if (catBreeds.isEmpty) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Cat Breeds',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white)),
              centerTitle: true,
              backgroundColor: Colors.deepPurple,
            ),
            body: const Center(child: Text('No cat breeds available.')),
          );
        }
        // TODO: Scaffold should be moved to the top level widget
        return Scaffold(
          appBar: AppBar(
            title: const Text('Cat Breeds',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
          ),
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              final catBreed = catBreeds[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
