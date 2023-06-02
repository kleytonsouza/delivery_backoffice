import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

  ColorsApp._();

  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0xFF003C71);
  Color get secondary => const Color(0xFF1D1D1D);
  Color get black => const Color(0xFF140E0E);
}

extension ColorsAppExtension on BuildContext {
  ColorsApp get colors => ColorsApp.instance;
}
