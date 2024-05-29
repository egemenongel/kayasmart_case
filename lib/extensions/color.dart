import 'dart:ui';

extension HexColor on Color {
  static Color colorFromHex(String hexString) {
    final hexCode = hexString.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}
