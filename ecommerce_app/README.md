# E-Commerce Flutter App

A simple and elegant e-commerce mobile application built with Flutter. This app demonstrates key features of a shopping application including product browsing, cart management, and checkout functionality.

## Features

- 📱 **Product Catalog**: Browse through a collection of products organized by categories
- 🔍 **Category Filter**: Filter products by category (Electronics, Accessories, Home)
- 🛒 **Shopping Cart**: Add, remove, and update product quantities in the cart
- 💳 **Checkout**: Review your order and complete the purchase
- 📊 **Real-time Cart Updates**: See cart item count in the app bar
- 🎨 **Clean UI**: Material Design with intuitive navigation

## Project Structure

```
ecommerce_app/
├── lib/
│   ├── data/
│   │   └── product_data.dart       # Sample product data
│   ├── models/
│   │   ├── product.dart            # Product model
│   │   ├── cart_item.dart          # Cart item model
│   │   └── cart_provider.dart      # Cart state management
│   ├── screens/
│   │   ├── home_screen.dart        # Main product listing screen
│   │   ├── product_detail_screen.dart  # Product details
│   │   └── cart_screen.dart        # Shopping cart screen
│   ├── widgets/
│   │   └── product_card.dart       # Reusable product card widget
│   └── main.dart                    # App entry point
└── pubspec.yaml                     # Dependencies
```

## Technologies Used

- **Flutter**: Cross-platform mobile framework
- **Provider**: State management solution
- **Material Design**: UI components and design system

## Prerequisites

Before running this app, make sure you have:

1. **Flutter SDK** installed (version 3.0.0 or higher)
   - Download from: https://flutter.dev/docs/get-started/install
   
2. **Android Studio** or **Visual Studio Code** with Flutter extensions

3. **Android Emulator** or **iOS Simulator** (or a physical device)

## Installation & Setup

### Step 1: Install Flutter

If you haven't already, install Flutter by following the official guide:
- Windows: https://flutter.dev/docs/get-started/install/windows
- macOS: https://flutter.dev/docs/get-started/install/macos
- Linux: https://flutter.dev/docs/get-started/install/linux

Verify installation:
```bash
flutter --version
flutter doctor
```

### Step 2: Clone the Repository

```bash
cd /path/to/CSC461-Introduction-to-Data-Science-FA25-/ecommerce_app
```

### Step 3: Install Dependencies

```bash
flutter pub get
```

### Step 4: Run the App

**For Android:**
```bash
flutter run
```

**For iOS (macOS only):**
```bash
flutter run -d ios
```

**For Web:**
```bash
flutter run -d chrome
```

**For Windows:**
```bash
flutter run -d windows
```

## How to Use

1. **Browse Products**: The home screen displays all available products in a grid layout
2. **Filter by Category**: Use the category chips at the top to filter products
3. **View Details**: Tap on any product card to see detailed information
4. **Add to Cart**: Click the cart icon on product cards or the "Add to Cart" button on detail pages
5. **Manage Cart**: Click the cart icon in the app bar to view your shopping cart
6. **Adjust Quantities**: Use +/- buttons to change item quantities in the cart
7. **Remove Items**: Click the delete icon to remove items from the cart
8. **Checkout**: Review your total and click "Checkout" to complete the order

## Key Features Explained

### State Management with Provider

The app uses the Provider package for state management:
- `CartProvider`: Manages the shopping cart state
- Notifies listeners when cart is updated
- Persists cart data across screens

### Product Data

Sample products are defined in `lib/data/product_data.dart` with:
- Product name and description
- Price
- Category
- Placeholder images

### Navigation

The app uses Flutter's Navigator for screen transitions:
- Push navigation to detail and cart screens
- Pop navigation to return to previous screens

## Customization

### Adding New Products

Edit `lib/data/product_data.dart` and add new products to the list:

```dart
Product(
  id: '9',
  name: 'Your Product',
  description: 'Product description',
  price: 99.99,
  imageUrl: 'https://your-image-url.com/image.png',
  category: 'Your Category',
),
```

### Changing Theme

Modify the theme in `lib/main.dart`:

```dart
theme: ThemeData(
  primarySwatch: Colors.purple,  // Change primary color
  // Add more theme customizations
),
```

### Adding Real Images

Replace placeholder URLs in `product_data.dart` with actual product image URLs.

## Dependencies

- `flutter`: SDK for building the app
- `provider: ^6.0.5`: State management
- `cupertino_icons: ^1.0.2`: iOS-style icons

## Building for Production

### Android APK

```bash
flutter build apk --release
```

The APK will be generated at: `build/app/outputs/flutter-apk/app-release.apk`

### iOS App

```bash
flutter build ios --release
```

### Web

```bash
flutter build web --release
```

## Testing

Run tests (if test files are added):

```bash
flutter test
```

## Troubleshooting

**Issue: "flutter: command not found"**
- Solution: Make sure Flutter is in your PATH. Run `flutter doctor` to diagnose.

**Issue: Gradle build fails**
- Solution: Check internet connection and try `flutter clean` then `flutter pub get`

**Issue: Images not loading**
- Solution: Check internet connection. The app uses network images.

## Future Enhancements

- [ ] User authentication and profiles
- [ ] Product search functionality
- [ ] Persistent cart storage (SharedPreferences or SQLite)
- [ ] Payment integration
- [ ] Order history
- [ ] Product reviews and ratings
- [ ] Wishlist functionality
- [ ] Backend API integration

## Contributing

This is a educational project. Feel free to fork and modify for your needs.

## License

This project is open source and available for educational purposes.

## Contact

For questions or feedback about this project, please contact the course instructor or repository owner.

---

**Note**: This is a demo application for educational purposes. Product data is sample data and checkout functionality is simulated.
