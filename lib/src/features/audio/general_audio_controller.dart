import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slidepuzzle/src/features/audio/repositories/audio_local.dart';

final generalAudioControllerProvider =
    ChangeNotifierProvider<GeneralAudioController>((ref) {
  return GeneralAudioController(ref);
});

class GeneralAudioController extends ChangeNotifier {
  final Ref _ref;

  GeneralAudioController(this._ref) {
    _isMuted = _ref.read(audioLocalProvider).isMuted;
  }

  bool _isMuted = false;
  bool get isMuted => _isMuted;

  set isMuted(bool value) {
    _ref.read(audioLocalProvider).isMuted = value;
    _isMuted = value;
    notifyListeners();
  }
}
