// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:imc_tdd/bmi_controller.dart';

import 'package:imc_tdd/main.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('Test logic of insert data page', (WidgetTester tester) async {
    await tester.pumpWidget(
        ChangeNotifierProvider(
          create: (context) => BMIController(),
          child: const MyApp(),
        )
    );

    expect(find.text("Please, enter the weight!"), findsNothing);
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();
    expect(find.text("Please, enter the height!"), findsOneWidget);

    await tester.enterText(find.byType(TextFormField).first, "55.0");
    await tester.enterText(find.byType(TextFormField).at(1), "1.79");
    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    expect(find.byType(ElevatedButton), findsNothing);
  });
}
