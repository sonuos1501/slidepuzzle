import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const Text('Hello');
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
      routeInformationParser: App.router.routeInformationParser,
      routerDelegate: App.router.routerDelegate,
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (context) => 'Not Found',
    );
  }
}
