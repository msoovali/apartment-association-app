import 'package:flutter/material.dart';

class LoadingScreen {
  LoadingScreen._();

  static final LoadingScreen _sharedInstance = LoadingScreen._();

  factory LoadingScreen.instance() => _sharedInstance;

  OverlayEntry? _currentOverlay;

  void show({required BuildContext context}) {
    if (_currentOverlay != null) return;

    final overlayState = Overlay.of(context);

    _currentOverlay = OverlayEntry(builder: (context) {
      return Material(
        color: Colors.black.withValues(alpha: 0.5),
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    });

    overlayState.insert(_currentOverlay!);
  }

  void hide() {
    _currentOverlay?.remove();
    _currentOverlay = null;
  }
}
