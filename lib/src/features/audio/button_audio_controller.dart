import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:slidepuzzle/src/features/audio/general_audio_controller.dart';

final buttonAudioControllerProvider =
    Provider((ref) => ButtonAudioController(ref));

class ButtonAudioController {
  ButtonAudioController(this._ref);

  final Ref _ref;
  final _player = AudioPlayer();

  void clickSound() async {
    if (_ref.read(generalAudioControllerProvider).isMuted) return;

    try {
      await _player.setAsset('assets/sounds/click1.wav');
      _player.play();
    } catch (_) {}
  }
}
