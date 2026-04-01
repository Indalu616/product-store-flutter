# Store App (Flutter)

A simple multi-platform **store/catalog** Flutter app that fetches products from the public DummyJSON API and displays them in a modern grid UI with a product details screen.

## What’s included

- **Product list**: grid of products with image, price, and rating as shown in the image below
  <img width="385" height="555" alt="image" src="https://github.com/user-attachments/assets/03be1d21-d933-4922-8baf-70ded40ffcdb" />

- **Product details**: when you click on the product item it will takes you to the product details screen where it shows details such as image header + category, price, rating, description as shown in the image below
  <img width="393" height="728" alt="image" src="https://github.com/user-attachments/assets/f26e84bd-4200-4ba3-96b2-cd45fa9462a4" />

- **Networking**: `http` client fetching from `https://dummyjson.com/products`
- **Web support**: uses a CORS proxy when running on Flutter Web

## Project structure (high level)

- **Entry point**: `lib/main.dart`
- **Screens**: `lib/screens/product_list_screen.dart`, `lib/screens/product_detail_screen.dart`
- **Data model**: `lib/models/product.dart`
- **API client**: `lib/services/api_service.dart`
- **UI components**: `lib/widgets/product_card.dart`

## Prerequisites

- **Flutter SDK** (Dart \(>= 3.11\))
- A configured platform toolchain for your target:
  - Android: Android Studio + SDK
  - iOS: Xcode (macOS only)
  - Web: Chrome (or another supported browser)

## Clone & run

```bash
git clone https://github.com/Indalu616/product-store-flutter.git
cd store_app
flutter pub get
flutter run
```

### Run on a specific platform

```bash
flutter run -d chrome   # Web
flutter run -d android  # Android device/emulator
flutter run -d ios      # iOS simulator (macOS only)
```

## Notes

- **API**: Product data comes from DummyJSON; the app requires an internet connection.
- **Web CORS**: When running on web, requests are routed via `corsproxy.io` inside `ApiService`.
