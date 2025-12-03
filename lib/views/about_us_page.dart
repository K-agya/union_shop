import 'package:flutter/material.dart';
import 'package:union_shop/widgets/header_widget.dart';
import 'package:union_shop/widgets/footer_widget.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            HeaderWidget(
              onLogoTap: () => Navigator.pushNamed(context, '/'),
              onAboutTap: () => Navigator.pushNamed(context, '/about'),
              onProductTap: () => Navigator.pushNamed(context, '/product'),
              onLoginTap: () => Navigator.pushNamed(context, '/login'),
            ),

            // About Us details
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'About Us',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Welcome to the Union Shop!\n'
                    'We\'re dedicated to giving you the very best University branded products, with a range of clothing and merchandise available to shop all year round! We even offer an exclusive personalisation service!\n\n'
                    'All online purchases are available for delivery or instore collection!\n\n'
                    'We hope you enjoy our products as much as we enjoy offering them to you. If you have any questions or comments, please don\'t hesitate to contact us at hello@upsu.net.\n\n'
                    'Happy shopping!\n\n'
                    'The Union Shop & Reception Team',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),

            // Footer
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}
