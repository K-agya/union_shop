import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/widgets/header_widget.dart';

void main() {
  testWidgets('HeaderWidget displays navigation buttons and handles taps', (WidgetTester tester) async {
    // Define mock callbacks for the HeaderWidget
    bool logoTapped = false;
    bool aboutTapped = false;
    bool collectionsTapped = false;
    bool productTapped = false;
    bool loginTapped = false;

    // Create the widget to be tested
    final headerWidget = MaterialApp(
      home: HeaderWidget(
        onLogoTap: () => logoTapped = true,
        onAboutTap: () => aboutTapped = true,
        onCollectionsTap: () => collectionsTapped = true,
        onProductTap: () => productTapped = true,
        onLoginTap: () => loginTapped = true,
      ),
    );

    // Build the widget
    await tester.pumpWidget(headerWidget);

    // Verify that all navigation buttons are displayed
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('About Us'), findsOneWidget);
    expect(find.text('Collections'), findsOneWidget);
    expect(find.text('Products'), findsOneWidget);

    // Simulate taps and verify the callbacks are triggered
    await tester.tap(find.text('Home'));
    await tester.pump();
    expect(logoTapped, true);

    await tester.tap(find.text('About Us'));
    await tester.pump();
    expect(aboutTapped, true);

    await tester.tap(find.text('Collections'));
    await tester.pump();
    expect(collectionsTapped, true);

    await tester.tap(find.text('Products'));
    await tester.pump();
    expect(productTapped, true);

    await tester.tap(find.byIcon(Icons.person_outline)); // Login button
    await tester.pump();
    expect(loginTapped, true);
  });
}