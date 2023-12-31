import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:slidepuzzle/src/cores/db/db.dart';
import 'package:slidepuzzle/src/features/app_settings/app_setting_local.dart';
import 'package:slidepuzzle/src/features/audio/repositories/audio_local.dart';
import 'package:slidepuzzle/src/features/playboard/repositories/playboard_local.dart';

void bootstraps(Widget app) async {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await Hive.initFlutter();

  // Database initialization
  AdapterInitializer.initialize();

  AppSettingLocal appSettingLocal = AppSettingLocalImpl();
  await appSettingLocal.init();

  PlayboardLocal playboardLocal = PlayboardLocalImpl();
  await playboardLocal.init();

  AudioLocal audioLocal = AudioLocalImpl();
  await audioLocal.init();

  runApp(
    ProviderScope(
      overrides: [
        appSettingLocalProvider.overrideWithValue(appSettingLocal),
        playboardLocalProvider.overrideWithValue(playboardLocal),
        audioLocalProvider.overrideWithValue(audioLocal),
      ],
      child: Portal(child: app),
    ),
  );
}
