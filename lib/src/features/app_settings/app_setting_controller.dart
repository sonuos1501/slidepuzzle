import 'package:flutter/material.dart';
import 'package:slidepuzzle/src/features/app_settings/app_setting_local.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appSettingControllerProvider = ChangeNotifierProvider<AppSettingController>((ref) => AppSettingController(ref));

class AppSettingController extends ChangeNotifier {
  AppSettingController(this._ref) {
    _isDarkTheme = _ref.read(appSettingLocalProvider).isDarkTheme;
    _reduceMotion = _ref.read(appSettingLocalProvider).reduceMotion;
  }

  final Ref _ref;

  bool _isDarkTheme = false;
  bool get isDarkTheme => _isDarkTheme;
  set isDarkTheme(bool value) {
    _isDarkTheme = value;
    _ref.read(appSettingLocalProvider).isDarkTheme = value;
    notifyListeners();
  }

  bool _reduceMotion = false;
  bool get reduceMotion => _reduceMotion;
  set reduceMotion(bool value) {
    _reduceMotion = value;
    _ref.read(appSettingLocalProvider).reduceMotion = value;
    notifyListeners();
  }
}
