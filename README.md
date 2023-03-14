# rmb

Flutter project for RMB

## Getting Started

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## To genrate icon and splash screen

- [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons)
flutter pub run flutter_launcher_icons  

- [flutter_native_splash](https://pub.dev/packages/flutter_native_splash)
flutter pub run flutter_native_splash:create

## To genrate assets

- [flutter_gen](https://pub.dev/packages/flutter_gen)
flutter packages pub run build_runner build -d

## To genrate freezed

- [freezed](https://pub.dev/packages/freezed)
flutter pub run build_runner build --delete-conflicting-outputs
