import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:meditations/main.dart';

void main() {
  testWidgets('Bottom navigation smoke test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the title shows Book 1 and Section 1.
    expect(find.text('Meditations Book 1 Section 1'), findsOneWidget);

    // Tap the icon for next and trigger a frame.
    await tester.tap(find.byIcon(Icons.navigate_next));
    await tester.pump();

    // Verify that the title has changed correctly.
    expect(find.text('Meditations Book 1 Section 2'), findsOneWidget);
    expect(find.text('Meditations Book 1 Section 1'), findsNothing);

    // Tap the icon for last and trigger a frame.
    await tester.tap(find.byIcon(Icons.last_page));
    await tester.pump();

    // Verify that the title has changed correctly.
    expect(find.text('Meditations Book 12 Section 26'), findsOneWidget);
    expect(find.text('Meditations Book 1 Section 2'), findsNothing);

    // Tap the icon for previous and trigger a frame.
    await tester.tap(find.byIcon(Icons.navigate_before));
    await tester.pump();

    // Verify that the title has changed correctly.
    expect(find.text('Meditations Book 12 Section 25'), findsOneWidget);
    expect(find.text('Meditations Book 12 Section 26'), findsNothing);

    // Tap the icon for first and trigger a frame.
    await tester.tap(find.byIcon(Icons.first_page));
    await tester.pump();

    // Verify that the title has changed correctly.
    expect(find.text('Meditations Book 1 Section 1'), findsOneWidget);
    expect(find.text('Meditations Book 12 Section 25'), findsNothing);
  });
}
