import 'package:equatable/equatable.dart';
import 'package:slidepuzzle/src/features/playboard/models/playboard_config.dart';

abstract class PlayboardState extends Equatable {
  final PlayboardConfig config;

  const PlayboardState({required this.config});
}
