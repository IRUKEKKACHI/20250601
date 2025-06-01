import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:p_20250601/screens/init_screen.dart';

void main() {
  testWidgets('InitScreen renders correct texts.', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: InitScreen()));

    expect(find.text('Init Screen'), findsOneWidget);
    expect(
        find.text(
            'Morgen will ich sagen genau so wie jetzt: Ich übe heute auch wie ich gestern gemacht habe.'),
        findsOneWidget);
    expect(find.byKey(Key('navigateToCounterButton')), findsOneWidget);
  });
}
