import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:slidepuzzle/src/cores/db/db.dart';

void bootstraps(Widget app) async {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await Hive.initFlutter();

  // Database initialization
  AdapterInitializer.initialize();

  runApp(Portal(child: app));
}
