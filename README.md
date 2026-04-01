# Store App (Flutter)

A simple multi-platform **store/catalog** Flutter app that fetches products from the public DummyJSON API and displays them in a modern grid UI with a product details screen.

## What’s included

- **Product list**: grid of products with image, price, and rating
- **Product details**: image header + category, price, rating, description
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
git clone <YOUR_REPO_URL>
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
