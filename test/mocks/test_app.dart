import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:slidepuzzle/src/features/app_settings/app_setting_controller.dart';
import 'package:slidepuzzle/src/features/app_settings/app_setting_local.dart';

import '../features/app_settings/mock_app_setting_local.dart';

class MockLocals {
  final appSettingLocal = MockAppSettingLocal();
}

Future<Tuple2<Widget, MockLocals>> testApp(Widget child) async {
  final locals = MockLocals();
  when(() => locals.appSettingLocal.isDarkTheme).thenReturn(true);
  when(() => locals.appSettingLocal.reduceMotion).thenReturn(false);

  final widget = ProviderScope(
    overrides: [
      appSettingLocalProvider.overrideWithValue(locals.appSettingLocal),
    ],
    child: Portal(
      child: Consumer(
        builder: (context, ref, child) {
          final isDarkTheme = ref.watch(appSettingControllerProvider.select((value) => value.isDarkTheme));

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
            theme: FlexColorScheme.light(
              fontFamily: 'kenvector_future',
              blendLevel: 20,
              surfaceMode: FlexSurfaceMode.highSurfaceLowScaffold,
            ).toTheme,
            darkTheme: FlexColorScheme.dark(
              fontFamily: 'kenvector_future',
              blendLevel: 20,
              surfaceMode: FlexSurfaceMode.highSurfaceLowScaffold,
            ).toTheme,
            home: child,
          );
        },
        child: child,
      ),
    ),
  );

  return Tuple2(widget, locals);
}
