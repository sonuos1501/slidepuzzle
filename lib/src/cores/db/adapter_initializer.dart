import 'package:hive_flutter/adapters.dart';
import 'package:slidepuzzle/src/widgets/widgets.dart';

class AdapterInitializer {
  static void initialize() {
    Hive.registerAdapter<ButtonColors>(ButtonColorsAdapter());
  }
}
