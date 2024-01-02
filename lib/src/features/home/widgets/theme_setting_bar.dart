import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:slidepuzzle/src/features/app_settings/app_setting_controller.dart';
import 'package:slidepuzzle/src/features/audio/general_audio_controller.dart';
import 'package:slidepuzzle/src/features/playboard/controllers/playboard_info_controller.dart';
import 'package:slidepuzzle/src/widgets/widgets.dart';

class ThemeSettingBar extends HookConsumerWidget {
  const ThemeSettingBar({super.key});

  double delayedProgress(int length, double animationValue, int i) =>
      ((animationValue * length.toDouble()) - (i / length))
          .clamp(0, 1)
          .toDouble();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMuted = ref
        .watch(generalAudioControllerProvider.select((value) => value.isMuted));
    final audioController = ref.watch(generalAudioControllerProvider.notifier);

    final isDarkMode = ref.watch(
        appSettingControllerProvider.select((value) => value.isDarkTheme));
    final playboardInfoController =
        ref.watch(playboardInfoControllerProvider.notifier);
    final playboardDefaultColor = ref
        .watch(playboardInfoControllerProvider.select((value) => value.color));
    final isColorPickerExpand = useState(false);
    final isPreCloseColorPicker = useState(false);

    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Center(
        child: SizedBox(
          width: 190,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PortalEntry(
                visible: isColorPickerExpand.value,
                childAnchor: Alignment.bottomRight,
                portalAnchor: Alignment.bottomLeft,
                portal: Column(
                  key: const ValueKey('color-picker'),
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...ButtonColors.values.map((color) {
                      return TweenAnimationBuilder<double>(
                        tween: Tween<double>(
                          begin: 0,
                          end: isPreCloseColorPicker.value ? 0 : 1,
                        ),
                        duration: Duration(
                          milliseconds: 200 +
                              200 *
                                  (isPreCloseColorPicker.value == false
                                      ? (ButtonColors.values.length -
                                          color.index -
                                          1)
                                      : color.index),
                        ),
                        curve: Curves.decelerate,
                        builder: (context, value, child) {
                          return Opacity(
                            opacity: delayedProgress(
                              ButtonColors.values.length,
                              value,
                              ButtonColors.values.length - color.index,
                            ),
                            child: child!,
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.only(
                            bottom:
                                color.index == ButtonColors.values.length - 1
                                    ? 0
                                    : 8,
                            left: (190 - 49 * 3) / 2,
                          ),
                          child: IgnorePointer(
                            ignoring: isPreCloseColorPicker.value,
                            child: SlidepuzzleButton(
                              key: ValueKey('color-${color.index}'),
                              color: color,
                              size: ButtonSize.square,
                              onPressed: () {
                                playboardInfoController.color = color;

                                setStateDataForColor(
                                  isColorPickerExpand,
                                  isPreCloseColorPicker,
                                );
                              },
                              child: Text(color.name[0].toUpperCase()),
                            ),
                          ),
                        ),
                      );
                    }),
                  ],
                ),
                child: SlidepuzzleButton(
                  color: playboardDefaultColor,
                  size: ButtonSize.square,
                  onPressed: () => setStateDataForColor(
                    isColorPickerExpand,
                    isPreCloseColorPicker,
                  ),
                  child: isColorPickerExpand.value == false
                      ? const Icon(Icons.arrow_circle_up_outlined)
                      : const Icon(Icons.arrow_circle_down_outlined),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setStateDataForColor(
    ValueNotifier<bool> isColorPickerExpand,
    ValueNotifier<bool> isPreCloseColorPicker,
  ) {
    if (isPreCloseColorPicker.value == true) return;
    if (isColorPickerExpand.value == false) {
      isColorPickerExpand.value = true;
    } else {
      isPreCloseColorPicker.value = true;
      Future.delayed(
        Duration(
          milliseconds: 200 * ButtonColors.values.length,
        ),
        () {
          isPreCloseColorPicker.value = false;
          isColorPickerExpand.value = false;
        },
      );
    }
  }
}
