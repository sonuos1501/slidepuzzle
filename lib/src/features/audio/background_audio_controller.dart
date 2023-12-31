import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:slidepuzzle/src/features/audio/general_audio_controller.dart';

final backgroundAudioControllerProvider =
    StateNotifierProvider<BackgroundAudioController, bool>(
        (ref) => BackgroundAudioController(ref));

class BackgroundAudioController extends StateNotifier<bool> {
  BackgroundAudioController(this._ref) : super(false);

  final Ref _ref;
  final _player = AudioPlayer();

  void playWinSound() async {
    if (_ref.read(generalAudioControllerProvider).isMuted) return;

    try {
      await _player.setAsset('assets/sounds/win.pm3');
      _player.play();
    } catch (_) {}
  }

  void stop() => _player.stop();
}
