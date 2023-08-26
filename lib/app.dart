import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:slidepuzzle/src/features/app_settings/app_setting_controller.dart';
import 'package:slidepuzzle/src/features/home/home.dart';
import 'package:slidepuzzle/src/features/playboard/controllers/playboard_info_controller.dart';
import 'package:slidepuzzle/src/utils/app_infos/app_infos.dart';
import 'package:slidepuzzle/src/widgets/widgets.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          AppInfos.setAppTitle('Slide Puzzle - Home');
          return const HomePage();
        },
      ),
    ],
  );

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  Widget build(BuildContext context) {
    final playboardDefaultColor = ref.watch(
      playboardInfoControllerProvider.select(
        (value) => value.color,
      ),
    );
    final isDarkTheme = ref.watch(appSettingControllerProvider.select((value) => value.isDarkTheme));

    return MaterialApp.router(
      routerConfig: App.router,
      debugShowCheckedModeBanner: false,
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      theme: playboardDefaultColor.lightTheme,
      darkTheme: playboardDefaultColor.darkTheme,
      onGenerateTitle: (context) => 'Not Found',
    );
  }
}
