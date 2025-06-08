import 'package:flutter/material.dart';

class CatBreedDetailScreen extends StatelessWidget {
  const CatBreedDetailScreen({super.key});

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
