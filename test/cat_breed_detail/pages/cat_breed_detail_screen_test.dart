import 'package:cat_breeds_app/features/cat_breed_detail/pages/cat_breed_detail_screen.dart';
import 'package:cat_breeds_app/features/cat_breeds/model/cat_breed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'cat_breed_detail_screen_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<CatBreed>(),
])
void main() {
  testWidgets("""
  GIVEN: a CatBreed object with specific properties
  WHEN: the CatBreedDetailScreen is rendered
  THEN: all detail fields are displayed on the screen
  """, (WidgetTester tester) async {
    // GIVEN
    final mockCatBreed = MockCatBreed();
    when(mockCatBreed.breed).thenReturn('Abyssinian');
    when(mockCatBreed.country).thenReturn('Ethiopia');
    when(mockCatBreed.origin).thenReturn('Natural');
    when(mockCatBreed.coat).thenReturn('Short');
    when(mockCatBreed.pattern).thenReturn('Ticked');

    // WHEN
    await tester.pumpWidget(
      MaterialApp(
        home: CatBreedDetailScreen(catBreed: mockCatBreed),
      ),
    );

    // THEN
    expect(find.text('Breed:'), findsOneWidget);
    expect(find.text('Country:'), findsOneWidget);
    expect(find.text('Origin:'), findsOneWidget);
    expect(find.text('Coat:'), findsOneWidget);
    expect(find.text('Pattern:'), findsOneWidget);
  });

  testWidgets("""
  GIVEN: a CatBreed object
  WHEN: the CatBreedDetailScreen is rendered
  THEN: a Back button (leading IconButton) is present in the AppBar and a Back ElevatedButton in the body
  """, (WidgetTester tester) async {
    // GIVEN
    final mockCatBreed = MockCatBreed();
    when(mockCatBreed.breed).thenReturn('Abyssinian');
    when(mockCatBreed.country).thenReturn('Ethiopia');
    when(mockCatBreed.origin).thenReturn('Natural');
    when(mockCatBreed.coat).thenReturn('Short');
    when(mockCatBreed.pattern).thenReturn('Ticked');

    // WHEN
    await tester.pumpWidget(
      MaterialApp(
        home: CatBreedDetailScreen(catBreed: mockCatBreed),
      ),
    );

    // THEN
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is IconButton &&
            (widget.icon is Icon) &&
            (widget.icon as Icon).icon == Icons.arrow_back,
      ),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(ElevatedButton, 'Back'),
      findsOneWidget,
    );
  });
}
