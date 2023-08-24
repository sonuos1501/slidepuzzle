import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

import '../features/app_settings/mock_app_setting_local.dart';

class MockLocals {
  final appSettingLocal = MockAppSettingLocal();
}

Future<Tuple2<Widget, MockLocals>> testApp(Widget child) async {}