import 'package:flutter/material.dart';
import 'package:union_shop/widgets/header_widget.dart'; // Import HeaderWidget
import 'package:union_shop/widgets/footer_widget.dart'; // Import FooterWidget

class LoginSignupPage extends StatelessWidget {
  const LoginSignupPage({super.key});

  void navigateToHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add HeaderWidget
            HeaderWidget(
              onLogoTap: () => navigateToHome(context),
              onAboutTap: () {}, 
              onProductTap: () {}, // No action needed for Products here
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Please log in or sign up to continue.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 32),
                  // Login Form
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {}, // Placeholder for login functionality
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4d2963),
                    ),
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 32),
                  // Signup Form
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {}, // Placeholder for signup functionality
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4d2963),
                    ),
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
            ),
            // Add FooterWidget
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}