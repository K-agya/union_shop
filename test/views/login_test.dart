import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/views/login_signup_page.dart';
import 'package:union_shop/widgets/header_widget.dart';
import 'package:union_shop/widgets/footer_widget.dart';

void main() {
  group('LoginSignupPage Tests', () {
    testWidgets('should render HeaderWidget, FooterWidget, and login/signup forms', (WidgetTester tester) async {
      // Build the LoginSignupPage widget
      await tester.pumpWidget(const MaterialApp(home: LoginSignupPage()));
      await tester.pump();

      // Verify that the HeaderWidget is displayed
      expect(find.byType(HeaderWidget), findsOneWidget);

      // Verify that the FooterWidget is displayed
      expect(find.byType(FooterWidget), findsOneWidget);

      // Verify that the "Welcome!" text is displayed
      expect(find.text('Welcome!'), findsOneWidget);

      // Verify that the login form is displayed
      expect(find.text('Login'), findsOneWidget);
      expect(find.text('Email'), findsNWidgets(2)); // One for login, one for signup
      expect(find.text('Password'), findsNWidgets(2)); // One for login, one for signup
      expect(find.text('Login'), findsOneWidget);

      // Verify that the signup form is displayed
      expect(find.text('Sign Up'), findsOneWidget);
      expect(find.text('Full Name'), findsOneWidget);
      expect(find.text('Sign Up'), findsOneWidget);
    });

    testWidgets('should handle taps on login and signup buttons', (WidgetTester tester) async {
      // Build the LoginSignupPage widget
      await tester.pumpWidget(const MaterialApp(home: LoginSignupPage()));
      await tester.pump();

      // Simulate a tap on the "Login" button
      await tester.tap(find.text('Login'));
      await tester.pump();

      // Simulate a tap on the "Sign Up" button
      await tester.tap(find.text('Sign Up'));
      await tester.pump();

      // Verify that the taps are handled (currently placeholders, so no state changes)
      // Replace this with actual logic when implemented
    });
  });
}