import 'package:cat_breeds_app/features/cat_breeds/model/cat_breed.dart';
import 'package:flutter/material.dart';
import 'package:cat_breeds_app/theme/spacing.dart';

class CatBreedDetailScreen extends StatelessWidget {
  const CatBreedDetailScreen({
    super.key,
    required this.catBreed,
  });

  final CatBreed catBreed;

  static const unknown = 'Unknown';

  @override
  Widget build(BuildContext context) {
    final details = [
      _DetailItem('Breed', catBreed.breed),
      _DetailItem('Country', catBreed.country),
      _DetailItem('Origin', catBreed.origin),
      _DetailItem('Coat', catBreed.coat),
      _DetailItem('Pattern', catBreed.pattern),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cat Breed Detail',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.sp24),
          child: Column(
            children: [
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Spacing.sp24),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(Spacing.sp24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: Spacing.sp48,
                          backgroundColor: Colors.deepPurple[100],
                          child: const Icon(
                            Icons.pets,
                            size: Spacing.sp48,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ),
                      const SizedBox(height: Spacing.sp24),
                      ...List.generate(details.length, (i) {
                        final item = details[i];
                        return Column(
                          children: [
                            CatBreedDetailRow(
                              title: item.title,
                              value:
                                  item.value.isNotEmpty ? item.value : unknown,
                            ),
                            if (i != details.length - 1) const Divider(),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: Spacing.sp32),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: Spacing.sp16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Spacing.sp16),
                    ),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text(
                    'Back',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.deepPurple[50],
    );
  }
}

class CatBreedDetailRow extends StatelessWidget {
  final String title;
  final String value;

  const CatBreedDetailRow({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Spacing.sp8),
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
          const SizedBox(width: Spacing.sp12),
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

class _DetailItem {
  final String title;
  final String value;

  const _DetailItem(this.title, this.value);
}
