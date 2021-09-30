import 'dart:ui';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
  try {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
      var intValue = int.parse(hexColor, radix: 16);
      return intValue;
    } catch (err) {
      return int.parse("FFFFFF", radix: 16);
    }
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
