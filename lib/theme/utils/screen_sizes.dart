// Flutter imports:
import 'package:flutter/material.dart';

class ScreenSizes {
  ScreenSizes({required this.constraints});

  final BoxConstraints constraints;

  Size getScreenSize() {
    return constraints.biggest.width > 1200
        ? const Size(1920, 1080)
        : constraints.biggest.width > 800 && constraints.biggest.width < 1200
            ? const Size(1366, 768)
            : const Size(428, 926);
  }
}
