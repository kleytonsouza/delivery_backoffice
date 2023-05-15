import 'package:flutter/material.dart';

extension SizeExtensions on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  // menor tamanho da altura ou da largura
  double get screenShortesSide => MediaQuery.of(this).size.shortestSide;
  // maior tamanho da altura ou da largura
  double get screenLongestSide => MediaQuery.of(this).size.longestSide;

  double percentWidth(double percent) => screenWidth * percent;
  double percentHeight(double percent) => screenHeight * percent;
}
