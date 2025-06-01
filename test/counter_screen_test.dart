import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:p_20250601/main.dart';

void main() {
  testWidgets('Increments counter on button tap', (WidgetTester tester) async {
    await tester.pumpWidget(UebungMachtMeister());

    await tester.tap(find.byKey(Key('navigateToCounterButton')));
    await tester.pumpAndSettle();

    var counterTextWidget = tester.widget<Text>(find.byKey(Key('counterText')));
    expect(counterTextWidget.data, equals('Counter 0'));
    await tester.tap(find.byKey(Key('incrementButton')));
    await tester.pump();

    counterTextWidget = tester.widget<Text>(find.byKey(Key('counterText')));
    expect(counterTextWidget.data, equals('Counter 1'));
  });
}
