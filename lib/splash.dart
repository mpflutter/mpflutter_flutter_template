import 'package:flutter/material.dart';

// 闪屏页
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  static OverlayEntry? activeSplash;

  static void show(BuildContext context) {
    final overlayEntry = OverlayEntry(builder: (context) {
      return const Splash();
    });
    activeSplash = overlayEntry;
    Overlay.of(context)?.insert(overlayEntry);
  }

  static void hide(BuildContext context) {
    activeSplash?.remove();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
    );
  }
}
