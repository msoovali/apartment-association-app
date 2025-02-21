import 'package:apartment/service/local_storage/local_storage_service.dart';
import 'package:apartment/views/constants/localstorage.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class CustomTheme extends _$CustomTheme {
  static const dark = 'dark';
  static const light = 'light';

  @override
  ThemeData build() =>
      (LocalStorageService().getString(LocalStorageKeys.theme) ?? dark) == dark
          ? _customDarkTheme()
          : _customLightTheme();

  void toggleTheme() async {
    await LocalStorageService().setString(LocalStorageKeys.theme,
        state.brightness == Brightness.light ? dark : light);
    state = state.brightness == Brightness.light
        ? _customDarkTheme()
        : _customLightTheme();
  }

  ThemeData _customLightTheme() {
    const textColor = Color(0xFF2d2d2d);
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        primary: textColor,
        // Navbar icons and text
        secondary: Colors.black,
        // Background color
        surface: Colors.grey[200]!,
        // Cards and overlays
        onPrimary: Colors.white,
        // Text on primary
        onSecondary: Colors.white,
        // General text color
        onSurface: Colors.black, // Text on cards and surfaces
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(color: Colors.black, fontSize: 16),
        bodyMedium: TextStyle(color: textColor, fontSize: 14),
        labelMedium: TextStyle(color: textColor, fontSize: 14),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
    );
  }

  ThemeData _customDarkTheme() {
    const background = Color(0xFF2d2d2d);
    const labelColor = Color(0xFFaeaeae);
    return ThemeData(
      scaffoldBackgroundColor: background,
      useMaterial3: true,
      colorScheme: const ColorScheme.dark(
        primary: Colors.white,
        // Navbar icons and text
        secondary: Colors.white,
        // Background color
        surface: background,
        // Cards and overlays
        onPrimary: Colors.black,
        // Text on primary
        onSecondary: Colors.black,
        // General text color
        onSurface: Colors.white, // Text on cards and surfaces
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.grey[200]!),
          foregroundColor: WidgetStateProperty.all(Colors.black),
          iconColor: WidgetStateProperty.all(Colors.black),
          overlayColor:
              WidgetStateProperty.all(Colors.black.withValues(alpha: 0.1)),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: background,
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
        bodyMedium: TextStyle(color: Colors.white, fontSize: 14),
        labelMedium: TextStyle(color: labelColor, fontSize: 14),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: background,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    );
  }
}
