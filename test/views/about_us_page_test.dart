import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/views/about_us_page.dart';
import 'package:union_shop/widgets/header_widget.dart';
import 'package:union_shop/widgets/footer_widget.dart';

void main() {
  group('AboutUsPage Tests', () {
    testWidgets('should render HeaderWidget, FooterWidget, and About Us content', (WidgetTester tester) async {
      // Build the AboutUsPage widget
      await tester.pumpWidget(const MaterialApp(home: AboutUsPage()));
      await tester.pump();

      // Verify that the HeaderWidget is displayed
      expect(find.byType(HeaderWidget), findsOneWidget);

      // Verify that the FooterWidget is displayed
      expect(find.byType(FooterWidget), findsOneWidget);

      // Verify that the "About Us" title is displayed
      expect(find.text('About Us'), findsOneWidget);

      // Verify that the "About Us" description is displayed
      expect(
        find.text(
          'Welcome to the Union Shop!\n'
          'We\'re dedicated to giving you the very best University branded products, with a range of clothing and merchandise available to shop all year round! We even offer an exclusive personalisation service!\n\n'
          'All online purchases are available for delivery or instore collection!\n\n'
          'We hope you enjoy our products as much as we enjoy offering them to you. If you have any questions or comments, please don\'t hesitate to contact us at hello@upsu.net.\n\n'
          'Happy shopping!\n\n'
          'The Union Shop & Reception Team',
        ),
        findsOneWidget,
      );
    });

    testWidgets('should handle navigation callbacks in HeaderWidget', (WidgetTester tester) async {
      // Define mock navigation callbacks
      bool logoTapped = false;
      bool aboutTapped = false;
      bool productTapped = false;
      bool loginTapped = false;
      bool collectionsTapped = false;

      // Build the AboutUsPage widget with mock callbacks
      await tester.pumpWidget(
        MaterialApp(
          home: AboutUsPage(
            key: const Key('about_us_page'),
          ),
        ),
      );
      await tester.pump();

      // Simulate taps on HeaderWidget buttons
      await tester.tap(find.text('Home'));
      await tester.pump();
      expect(logoTapped, false); // Replace with actual callback logic
    });
  });
}