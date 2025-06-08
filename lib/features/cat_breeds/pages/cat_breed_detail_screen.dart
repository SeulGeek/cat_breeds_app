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
    const unknown = 'Unknown';

    return Scaffold(
      appBar: AppBar(
        title: Text(
          catBreed.breed,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 48,
                          backgroundColor: Colors.deepPurple[100],
                          child: const Icon(
                            Icons.pets,
                            size: 48,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      _catBreedDetails(
                        'Breed',
                        catBreed.breed.isNotEmpty ? catBreed.breed : unknown,
                      ),
                      const Divider(),
                      _catBreedDetails(
                        'Country',
                        catBreed.country.isNotEmpty
                            ? catBreed.country
                            : unknown,
                      ),
                      const Divider(),
                      _catBreedDetails(
                        'Origin',
                        catBreed.origin.isNotEmpty ? catBreed.origin : unknown,
                      ),
                      const Divider(),
                      _catBreedDetails(
                        'Coat',
                        catBreed.coat.isNotEmpty ? catBreed.coat : unknown,
                      ),
                      const Divider(),
                      _catBreedDetails(
                        'Pattern',
                        catBreed.pattern.isNotEmpty
                            ? catBreed.pattern
                            : unknown,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  label: const Text(
                    'Back',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.deepPurple[50],
    );
  }

  Widget _catBreedDetails(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            '$title:',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.deepPurple,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
