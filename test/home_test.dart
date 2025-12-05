import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/main.dart';
import 'package:union_shop/widgets/header_widget.dart';
import 'package:union_shop/widgets/footer_widget.dart';

void main() {
  group('HomeScreen Tests', () {
    testWidgets('should display HeaderWidget with navigation buttons', (WidgetTester tester) async {
      // Build the HomeScreen widget
      await tester.pumpWidget(const MaterialApp(home: HomeScreen()));
      await tester.pump();

      // Verify that the HeaderWidget contains navigation buttons
      expect(find.text('Home'), findsOneWidget);
      expect(find.text('About Us'), findsOneWidget);
      expect(find.text('Collections'), findsOneWidget);
      expect(find.text('Products'), findsOneWidget);
      expect(find.byIcon(Icons.person_outline), findsOneWidget); // Login icon
    });

    testWidgets('should display FooterWidget with Quick Links and Contact Info', (WidgetTester tester) async {
      // Build the HomeScreen widget
      await tester.pumpWidget(const MaterialApp(home: HomeScreen()));
      await tester.pump();

      // Verify that the FooterWidget contains Quick Links
      expect(find.text('Quick Links'), findsOneWidget);
      expect(find.text('Home'), findsOneWidget);
      expect(find.text('About Us'), findsOneWidget);
      expect(find.text('Products'), findsOneWidget);

      // Verify that the FooterWidget contains Contact Info
      expect(find.text('Contact'), findsOneWidget);
      expect(find.text('Email: shop@upsu.net'), findsOneWidget);
      expect(find.text('Phone: 01234 567890'), findsOneWidget);
      expect(find.text('Location: Portsmouth Campus'), findsOneWidget);

      // Verify that the FooterWidget contains the copyright text
      expect(find.text('Union Shop © 2025'), findsOneWidget);
    });

    testWidgets('should display hero section with title and button', (WidgetTester tester) async {
      // Build the HomeScreen widget
      await tester.pumpWidget(const MaterialApp(home: HomeScreen()));
      await tester.pump();

      // Verify that the hero section contains the title and button
      expect(find.text('Big Sale - 20% OFF'), findsOneWidget);
      expect(find.text("Don't miss out on our exclusive offers!"), findsOneWidget);
      expect(find.text('BROWSE PRODUCTS'), findsOneWidget);
    });

    testWidgets('should display product cards with correct titles and prices', (WidgetTester tester) async {
      // Build the HomeScreen widget
      await tester.pumpWidget(const MaterialApp(home: HomeScreen()));
      await tester.pump();

      // Verify that product cards are displayed with correct titles and prices
      expect(find.text('UOP Mug'), findsOneWidget);
      expect(find.text('£10.00'), findsOneWidget);
      expect(find.text('UOP Bottle'), findsOneWidget);
      expect(find.text('£15.00'), findsOneWidget);
      expect(find.text('UOP Hoodie'), findsOneWidget);
      expect(find.text('£20.00'), findsOneWidget);
      expect(find.text('UOP Tote Bag'), findsOneWidget);
      expect(find.text('£25.00'), findsOneWidget);
    });
  });
}
