# Union Shop

## Project Description
The **Union Shop** is a Flutter-based e-commerce application designed to provide users with a seamless shopping experience for university-branded merchandise. The app features a clean and responsive UI, allowing users to browse products, explore collections, and learn more about the shop. It includes dedicated pages for login/signup, product details, collections, and an about section.

### Key Features
- **Home Page**: Displays featured products and collections.
- **Collections Page**: Organized categories like Sale, Essentials, Merch, and Clothing.
- **Product Page**: Detailed view of individual products.
- **About Us Page**: Information about the Union Shop.
- **Login/Signup Page**: User authentication interface.
- **Reusable Components**: Includes `HeaderWidget` and `FooterWidget` for consistent navigation and layout.

---

## Installation and Setup Instructions

### Prerequisites
- **Operating System**: Windows, macOS, or Linux
- **Flutter SDK**: Version 3.0.0 or higher
- **Dart SDK**: Included with Flutter
- **Tools**: Git, IDE (e.g., Visual Studio Code, Android Studio)

### How to Clone the Repository
1. Open your terminal or command prompt.
2. Run the following command:
   ```bash
   git clone https://github.com/K-agya/union-shop.git
   ```
3. Navigate to the project directory:
   ```bash
   cd union-shop
   ```

### Step-by-Step Installation Guide
1. Ensure Flutter is installed and added to your system's PATH.
2. Run the following command to fetch dependencies:
   ```bash
   flutter pub get
   ```

### How to Run the Project
1. Connect a physical device or start an emulator.
2. Run the following command:
   ```bash
   flutter run
   ```

---

## Usage Instructions

### How to Use the Main Features
1. **Home Page**:
   - Browse featured products and collections.
   - Navigate to other pages using the header.
2. **Collections Page**:
   - View categorized collections like Sale, Essentials, Merch, and Clothing.
3. **Product Page**:
   - View detailed information about a product.
4. **About Us Page**:
   - Learn more about the Union Shop.
5. **Login/Signup Page**:
   - Authenticate as a user to access personalized features.

### How to Run Tests
1. Run the following command to execute all tests:
   ```bash
   flutter test
   ```
2. Test files are located in the `test` directory.

---

## Project Structure and Technologies Used

### Folder Organization
```
lib/
├── main.dart                # Entry point of the app
├── views/                   # Contains all the app's pages
│   ├── about_us_page.dart   # About Us page
│   ├── collections_page.dart # Collections page
│   ├── login_signup_page.dart # Login/Signup page
│   ├── product_page.dart    # Product details page
├── widgets/                 # Reusable widgets
│   ├── footer_widget.dart   # Footer widget
│   ├── header_widget.dart   # Header widget
```

### Key Files and Their Purposes
- **`main.dart`**: The app's entry point.
- **`header_widget.dart`**: Reusable header with navigation buttons.
- **`footer_widget.dart`**: Reusable footer with quick links and contact info.

### Key Packages or Dependencies
- **Flutter**: Framework for building the app.
- **Dart**: Programming language used in Flutter.
- **flutter_test**: For writing and running widget tests.

### Development Tools
- **Visual Studio Code**: Recommended IDE for Flutter development.
- **Android Studio**: For managing emulators and debugging.

---

## Known Issues or Limitations
### Current Bugs or Limitations
- Placeholder content is used for some pages (e.g., product descriptions).
- No backend integration for user authentication or product data.

### Future Improvements Planned
- Add backend integration for dynamic product data.
- Implement user authentication and personalized features.
- Improve responsiveness for smaller devices.

---

## Contribution Guidelines
1. Fork the repository.
2. Create a new branch for your feature or bug fix:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Description of changes"
   ```
4. Push to your branch:
   ```bash
   git push origin feature-name
   ```
5. Open a pull request.

---

## Contact Information
**Developer**: Dennis Agyare  
**Email**: agyare.dennis@outlook.com  
**GitHub**: [K-agya](https://github.com/K-agya)

Feel free to reach out with any questions or suggestions!