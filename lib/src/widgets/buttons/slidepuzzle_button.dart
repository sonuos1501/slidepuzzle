import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:slidepuzzle/src/features/audio/button_audio_controller.dart';
import 'package:slidepuzzle/src/widgets/widgets.dart';

enum SlidepuzzleButtonState { hover, idle, pressed }

enum SlidepuzzleButtonStyle { invert, normal }

class SlidepuzzleButton extends HookConsumerWidget {
  const SlidepuzzleButton({
    super.key,
    required this.color,
    this.size = ButtonSize.large,
    this.customSize,
    this.scale = 1,
    this.fontSize = 14,
    required this.onPressed,
    required this.child,
    this.style = SlidepuzzleButtonStyle.normal,
  });

  final ButtonColors color;
  final ButtonSize size;
  final SlidepuzzleButtonStyle style;
  final double fontSize;
  final VoidCallback onPressed;
  final Widget child;
  final double scale;
  final Size? customSize;

  Color _surfaceColor(ButtonColors color, double value) {
    return Color.lerp(
      Color.lerp(Colors.white, color.primaryColor, 0.02),
      color.primaryColor,
      style == SlidepuzzleButtonStyle.invert ? 1 - value : value,
    )!;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buttonState = useState(SlidepuzzleButtonState.idle);
    final audioController = ref.read(buttonAudioControllerProvider);

    return MouseRegion(
      cursor: MouseCursor.defer,
      onEnter: (_) => buttonState.value = SlidepuzzleButtonState.hover,
      onExit: (_) => buttonState.value = SlidepuzzleButtonState.idle,
      child: GestureDetector(
        onTapDown: (_) => buttonState.value = SlidepuzzleButtonState.pressed,
        onTapUp: (_) => buttonState.value = SlidepuzzleButtonState.idle,
        onTapCancel: () => buttonState.value = SlidepuzzleButtonState.idle,
        onTap: () {
          audioController.clickSound();
          onPressed();
        },
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(
            begin: 0,
            end: buttonState.value == SlidepuzzleButtonState.hover ? 1 : 0,
          ),
          duration: const Duration(milliseconds: 300),
          curve: Curves.decelerate,
          builder: (context, value, child) {
            final brightness = Theme.of(context).brightness;
            final colorButton = Color.lerp(
              color.primaryColor,
              Theme.of(context).colorScheme.background,
              style == SlidepuzzleButtonStyle.invert ? 1 - value : value,
            )!;
            final borderColor = Color.lerp(
              Color.lerp(
                colorButton,
                brightness == Brightness.light ? Colors.black : Colors.white,
                0.3,
              )!,
              color.primaryColor,
              style == SlidepuzzleButtonStyle.invert ? 1 - value : value,
            )!;

            return CustomPaint(
              painter: BorderSlidepuzzlePainter(
                color: colorButton,
                borderColor: borderColor,
                thickness: 2 + value * 1,
                elevation: 5 + value * 5,
                edge: 5,
                brightness: brightness,
              ),
              child: IconTheme(
                data: IconThemeData(color: _surfaceColor(color, value)),
                child: DefaultTextStyle(
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: fontSize * scale,
                        color: _surfaceColor(color, value),
                      ),
                  child: child!,
                ),
              ),
            );
          },
          child: SizedBox(
            height: customSize != null ? customSize!.height : 49 * scale,
            width: customSize != null
                ? customSize!.width
                : size == ButtonSize.square
                    ? 49 * scale
                    : 190,
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}

class BorderSlidepuzzlePainter extends CustomPainter {
  const BorderSlidepuzzlePainter({
    required this.color,
    this.borderColor,
    required this.thickness,
    required this.edge,
    required this.brightness,
    this.elevation = 4,
  });

  final Color color;
  final Color? borderColor;
  final double thickness;
  final double edge;
  final Brightness brightness;
  final double elevation;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    final path = Path()
      ..moveTo(edge, 0)
      ..lineTo(size.width - edge, 0)
      ..lineTo(size.width, edge)
      ..lineTo(size.width, size.height - edge)
      ..lineTo(size.width - edge, size.height)
      ..lineTo(edge, size.height)
      ..lineTo(0, size.height - edge)
      ..lineTo(0, edge)
      ..close();

    canvas.drawShadow(
      path,
      borderColor ??
          Color.lerp(
            color,
            brightness == Brightness.light ? Colors.black : Colors.white,
            0.3,
          )!,
      elevation,
      true,
    );

    canvas.drawPath(path, paint);

    final borderPaint = Paint()
      ..color = borderColor ??
          Color.lerp(
            color,
            brightness == Brightness.light ? Colors.black : Colors.white,
            0.3,
          )!
      ..strokeWidth = thickness
      ..style = PaintingStyle.stroke;
    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
