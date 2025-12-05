import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/views/collections_page.dart';
import 'package:union_shop/widgets/header_widget.dart';
import 'package:union_shop/widgets/footer_widget.dart';

void main() {
  group('CollectionsPage Tests', () {
    testWidgets('should render HeaderWidget, FooterWidget, and CollectionCards', (WidgetTester tester) async {
      // Build the CollectionsPage widget
      await tester.pumpWidget(const MaterialApp(home: CollectionsPage()));
      await tester.pump();

      // Verify that the HeaderWidget is displayed
      expect(find.byType(HeaderWidget), findsOneWidget);

      // Verify that the FooterWidget is displayed
      expect(find.byType(FooterWidget), findsOneWidget);

      // Verify that the Collections section title is displayed
      expect(find.text('COLLECTIONS'), findsOneWidget);

      // Verify that 4 CollectionCards are displayed
      expect(find.byType(CollectionCard), findsNWidgets(4));

      // Verify that the CollectionCards have the correct titles
      expect(find.text('Sale'), findsOneWidget);
      expect(find.text('Essentials'), findsOneWidget);
      expect(find.text('Merch'), findsOneWidget);
      expect(find.text('Clothing'), findsOneWidget);
    });

    testWidgets('should handle taps on CollectionCards', (WidgetTester tester) async {
      // Build the CollectionsPage widget
      await tester.pumpWidget(const MaterialApp(home: CollectionsPage()));
      await tester.pump();

      // Simulate a tap on the "Sale" CollectionCard
      await tester.tap(find.text('Sale'));
      await tester.pump();

      // Verify that the tap is logged (check console output for the print statement)
      // You can replace this with actual navigation logic if implemented
    });
  });
}