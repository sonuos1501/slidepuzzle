import 'package:flutter/material.dart';

class SlidePuzzleColors {
  static const dark = SlidePuzzleColorPack(
    blueBg: Color(0xFF12181A),
    greenBg: Color(0xFF151914),
    yellowBg: Color(0xFF1B1911),
    redBg: Color(0xFF1A1512),
  );

  static const light = SlidePuzzleColorPack(
    blueBg: Color(0xFFF6FBFE),
    yellowBg: Color(0xFFFFFDF5),
    greenBg: Color(0xFFF9FDF8),
    redBg: Color(0xFFFEF9F6),
  );
}

class SlidePuzzleColorPack {
  const SlidePuzzleColorPack({
    required this.blueBg,
    required this.yellowBg,
    required this.greenBg,
    required this.redBg,
  });

  final Color blueBg;
  final Color yellowBg;
  final Color greenBg;
  final Color redBg;
}
