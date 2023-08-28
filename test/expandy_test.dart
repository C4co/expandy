import 'package:flutter/material.dart';
import 'package:expandy/expandy.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Check render and behavior', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Expandy(
            title: 'Hello world!',
            children: [
              Text('Content'),
            ],
          ),
        ),
      ),
    );

    await tester.pump();

    expect(find.byKey(const Key('expandy_container')), findsOneWidget);
    expect(find.byKey(const Key('expandy_header')), findsOneWidget);
    expect(find.byKey(const Key('expandy_content')), findsOneWidget);

    final double initialHeight =
        tester.getSize(find.byKey(const Key('expandy_container'))).height;

    expect(initialHeight, greaterThan(0.0));

    await tester.tap(find.byKey(const Key('expandy_header')));

    await tester.pumpAndSettle();

    final double finalHeight =
        tester.getSize(find.byKey(const Key('expandy_container'))).height;

    expect(finalHeight, greaterThan(initialHeight));
  });
}
