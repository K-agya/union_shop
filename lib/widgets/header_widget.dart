import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final VoidCallback onLogoTap;
  final VoidCallback onAboutTap;

  const HeaderWidget({
    super.key,
    required this.onLogoTap,
    required this.onAboutTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 100,
      color: Colors.white,
      child: Column(
        children: [
          // Top banner
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8),
            color: const Color(0xFF4d2963),
            child: const Text(
              'PLACEHOLDER HEADER TEXT',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          // Main header
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  // Logo
                  GestureDetector(
                    onTap: onLogoTap,
                    child: Image.network(
                      'https://shop.upsu.net/cdn/shop/files/upsu_300x300.png?v=1614735854',
                      height: 18,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[300],
                          width: 18,
                          height: 18,
                          child: const Center(
                            child: Icon(Icons.image_not_supported,
                                color: Colors.grey),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Navigation Links (Desktop View)
                  if (screenWidth > 600) ...[
                    TextButton(
                      onPressed: () {}, // Placeholder for Home
                      child: const Text(
                        'Home',
                        style: TextStyle(
                          color: Color.fromARGB(255, 103, 103, 103),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    TextButton(
                      onPressed: onAboutTap, // Navigate to About Us
                      child: const Text(
                        'About Us',
                        style: TextStyle(
                          color: Color.fromARGB(255, 103, 103, 103),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    TextButton(
                      onPressed: () {}, // Placeholder for Products
                      child: const Text(
                        'Products',
                        style: TextStyle(
                          color: Color.fromARGB(255, 103, 103, 103),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],

                  const Spacer(),

                  // Action Buttons (Search, User, Cart, Menu)
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 600),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.search,
                            size: 18,
                            color: Colors.grey,
                          ),
                          padding: const EdgeInsets.all(8),
                          constraints: const BoxConstraints(
                            minWidth: 32,
                            minHeight: 32,
                          ),
                          onPressed: () {}, // Placeholder for search
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.person_outline,
                            size: 18,
                            color: Colors.grey,
                          ),
                          padding: const EdgeInsets.all(8),
                          constraints: const BoxConstraints(
                            minWidth: 32,
                            minHeight: 32,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/login');
                          },
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.shopping_bag_outlined,
                            size: 18,
                            color: Colors.grey,
                          ),
                          padding: const EdgeInsets.all(8),
                          constraints: const BoxConstraints(
                            minWidth: 32,
                            minHeight: 32,
                          ),
                          onPressed: () {}, // Placeholder for cart
                        ),
                        // Popup Menu (Mobile View)
                        if (screenWidth <= 600)
                          PopupMenuButton<String>(
                            icon: const Icon(
                              Icons.menu,
                              size: 18,
                              color: Colors.grey,
                            ),
                            onSelected: (value) {
                              if (value == 'home') {
                                Navigator.pushNamed(context, '/');
                              } else if (value == 'about') {
                                onAboutTap();
                              } else if (value == 'products') {
                                Navigator.pushNamed(context, '/products');
                              }
                            },
                            itemBuilder: (context) => [
                              const PopupMenuItem(
                                value: 'home',
                                child: Text('Home'),
                              ),
                              const PopupMenuItem(
                                value: 'about',
                                child: Text('About Us'),
                              ),
                              const PopupMenuItem(
                                value: 'products',
                                child: Text('Products'),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}