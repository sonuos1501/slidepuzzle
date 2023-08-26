import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slidepuzzle/src/features/playboard/repositories/playboard_local.dart';
import 'package:slidepuzzle/src/widgets/widgets.dart';

final playboardInfoControllerProvider =
    ChangeNotifierProvider<PlayboardInfoController>((ref) => PlayboardInfoController(ref));

class PlayboardInfoController extends ChangeNotifier {
  PlayboardInfoController(this._ref) {
    _color = _ref.read(playboardLocalProvider).buttonColor;
    _boardSize = _ref.read(playboardLocalProvider).boardSize;
  }

  final Ref _ref;

  ButtonColors _color = ButtonColors.blue;
  ButtonColors get color => _color;
  set color(ButtonColors color) {
    _ref.read(playboardLocalProvider).buttonColor = color;
    _color = color;
    notifyListeners();
  }

  int _boardSize = 3;
  int get boardSize => _boardSize;
  set boardSize(int size) {
    _ref.read(playboardLocalProvider).boardSize = size;
    _boardSize = size;
    notifyListeners();
  }
}
