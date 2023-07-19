import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main.freezed.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final counterController = ref.watch(counterProvider.notifier);
    final isLoading = ref.watch(counterProvider.select((value) => value.isLoading));
    final counter = ref.watch(counterProvider.select((value) => value.count));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            isLoading
                ? const CircularProgressIndicator()
                : Text(
                    counter.toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterController.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

final counterProvider = StateNotifierProvider.autoDispose<MainStateNotifier, MainState>((ref) => MainStateNotifier());

class MainStateNotifier extends StateNotifier<MainState> {
  MainStateNotifier() : super(MainState());

  void increment() async {
    state = state.copyWith(isLoading: true);
    await Future.delayed(const Duration(milliseconds: 200));
    final count = state.count;
    state = state.copyWith(isLoading: false, count: count + 1);
  }
}

@freezed
class MainState with _$MainState {
  factory MainState({
    @Default(false) bool isLoading,
    @Default(0) int count,
  }) = _MainState;
}
