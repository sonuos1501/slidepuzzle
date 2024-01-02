import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:slidepuzzle/src/features/app_settings/app_setting_controller.dart';
import 'package:slidepuzzle/src/features/home/widgets/theme_setting_bar.dart';
import 'package:slidepuzzle/src/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Text.rich(
                TextSpan(
                  text: 'Slide',
                  children: [
                    TextSpan(
                      text: 'puzzle',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                  ],
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            Column(
              children: [
                SlidepuzzleButton(
                  color: ButtonColors.blue,
                  onPressed: () {},
                  child: const Text('Single Mode'),
                ),
                const SizedBox(height: 8),
                SlidepuzzleButton(
                  color: ButtonColors.green,
                  onPressed: () {},
                  child: const Text('Multiple Mode'),
                ),
                const SizedBox(height: 8),
                SlidepuzzleButton(
                  color: ButtonColors.red,
                  onPressed: () {},
                  child: const Text('Online Mode'),
                ),
              ],
            ),
            const ThemeSettingBar(),
            const Gap(16),
            Consumer(builder: (context, ref, child) {
              final appSettingController =
                  ref.watch(appSettingControllerProvider.notifier);
              final reduceMotion = ref.watch(appSettingControllerProvider
                  .select((value) => value.reduceMotion));
              return TextButton(
                onPressed: () =>
                    appSettingController.reduceMotion = !reduceMotion,
                child: Text.rich(
                  TextSpan(
                    text: 'Reduce motion: ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground,
                        ),
                    children: [
                      TextSpan(
                        text: reduceMotion ? 'ON' : 'OFF',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
