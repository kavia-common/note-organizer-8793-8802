import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_frontend/main.dart';

void main() {
  testWidgets('Home page shows correct empty message and FAB', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());

    // Should show no notes hint and the FAB.
    expect(find.textContaining('No notes yet'), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
  });

  testWidgets('App bar has My Notes as title', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());

    expect(find.text('My Notes'), findsOneWidget);
  });
}
