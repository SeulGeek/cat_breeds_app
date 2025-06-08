import 'package:cat_breeds_app/features/cat_breeds/model/cat_breed.dart';
import 'package:flutter/material.dart';

class CatBreedDetailScreen extends StatelessWidget {
  const CatBreedDetailScreen({
    super.key,
    required this.catBreed,
  });

  final CatBreed catBreed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat Breed Details'),
      ),
      body: const Center(
        child: Text(
          'Details of Cat Breed',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
