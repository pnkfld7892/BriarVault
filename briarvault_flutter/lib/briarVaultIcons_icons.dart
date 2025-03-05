// Place fonts/briarVaultIcons.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: briarVaultIcons
//      fonts:
//       - asset: fonts/briarVaultIcons.ttf
import 'package:flutter/widgets.dart';

class BriarVaultIcons {
  BriarVaultIcons._();

  static const String _fontFamily = 'briarVaultIcons';

  static const IconData cellar = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData cellarOutline = IconData(0xe901, fontFamily: _fontFamily);
  static const IconData smokePipe = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData smokePipeOutline = IconData(0xe903, fontFamily: _fontFamily);
}
