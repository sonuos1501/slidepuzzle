import 'package:flutter/material.dart';
import 'package:slidepuzzle/src/widgets/widgets.dart';

class SlidepuzzleDialog extends StatelessWidget {
  const SlidepuzzleDialog({
    super.key,
    required this.title,
    required this.content,
    required this.actions,
    this.height,
    this.width,
  });

  final String title;
  final Widget content;
  final List<Widget> actions;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomPaint(
        painter: BorderSlidepuzzlePainter(
          color: Theme.of(context).scaffoldBackgroundColor,
          thickness: 2,
          edge: 6,
          brightness: Theme.of(context).brightness,
        ),
        child: SizedBox(
          height: height ?? 200,
          width: width ?? double.maxFinite,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Center(
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                  ),
                  Expanded(child: Center(child: content)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: actions,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
