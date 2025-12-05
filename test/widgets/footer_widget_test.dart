import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/widgets/footer_widget.dart';

void main() {
  testWidgets('FooterWidget displays Quick Links, Contact, and Copyright', (WidgetTester tester) async {
    // Create the widget to be tested
    const footerWidget = MaterialApp(
      home: Scaffold(
        body: FooterWidget(),
      ),
    );

    // Build the widget
    await tester.pumpWidget(footerWidget);

    // Verify Quick Links section
    expect(find.text('Quick Links'), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('About Us'), findsOneWidget);
    expect(find.text('Products'), findsOneWidget);

    // Verify Contact section
    expect(find.text('Contact'), findsOneWidget);
    expect(find.text('Email: shop@upsu.net'), findsOneWidget);
    expect(find.text('Phone: 01234 567890'), findsOneWidget);
    expect(find.text('Location: Portsmouth Campus'), findsOneWidget);

    // Verify Copyright section
    expect(find.text('Union Shop © 2025'), findsOneWidget);
  });
}