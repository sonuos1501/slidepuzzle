import 'package:flutter/material.dart';

class Breakpoint {
  const Breakpoint({
    required this.small,
    required this.normal,
    required this.large,
  });

  final double small;
  final double normal;
  final double large;

  T responsiveValue<T>(
    Size size, {
    T? watch,
    T? mobile,
    T? tablet,
    T? desktop,
    required T defaultValue,
  }) {
    // print(
    //   'CURRENT STAGE:\n'
    //   ' | WATCH: ${size.shortestSide <= small} \n'
    //   ' | MOBILE: ${size.shortestSide <= normal} \n'
    //   ' | TABLET: ${size.shortestSide <= large} \n'
    //   ' | DESKTOP: ${size.shortestSide <= large} \n',
    // );
    if (size.shortestSide <= small) return watch ?? defaultValue;
    if (size.shortestSide <= normal) return mobile ?? defaultValue;
    if (size.shortestSide <= large) return tablet ?? defaultValue;
    return desktop ?? defaultValue;
  }
}
