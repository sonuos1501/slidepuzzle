import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:slidepuzzle/src/features/app_settings/app_setting_controller.dart';
import 'package:slidepuzzle/src/utils/app_infos/app_infos.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          AppInfos.setAppTitle('Phạm Thế Sơn');
          return const Test();
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
    final isDarkTheme = ref.watch(appSettingControllerProvider.select((value) => value.isDarkTheme));

    return MaterialApp.router(
      routerConfig: App.router,
      debugShowCheckedModeBanner: false,
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      onGenerateTitle: (context) => 'Not Found',
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
