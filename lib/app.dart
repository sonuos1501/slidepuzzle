import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slidepuzzle/src/utils/app_infos/app_infos.dart';

class App extends StatefulWidget {
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
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: App.router,
      debugShowCheckedModeBanner: false,
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
