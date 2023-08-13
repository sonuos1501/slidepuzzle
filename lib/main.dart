import 'package:flutter/material.dart';
import 'package:slidepuzzle/app.dart';
import 'package:slidepuzzle/bootstraps.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bootstraps(const App());
}
