library hybrid_hex_color_converter;

import 'package:flutter/material.dart';

extension HexColor on Color {
  /// Converts a hexadecimal color string to a Flutter [Color] object.
  ///
  /// The [hexString] parameter is the hexadecimal color string to convert. It
  /// must start with a '#' character, followed by either 3 or 6 hexadecimal
  /// characters representing the RGB values. If the [hexString] has 7
  /// characters, the first character after the '#' is ignored and treated as
  /// an alpha channel value.
  ///
  /// Returns a Flutter [Color] object representing the color specified by the
  /// [hexString]. If the [hexString] is not a valid hexadecimal color string,
  /// returns a default color with the RGB values of 146, 143, and 143.
  ///
  /// Example usage:
  ///   final color = HybridHexColorConverter.fromHex('#FF0000'); // Red
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    try {
      if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
      buffer.write(hexString.replaceFirst('#', ''));
      return Color(int.parse(buffer.toString(), radix: 16));
    } catch (e) {
      return Color(int.parse('928F8F', radix: 16));
    }
  }

  /// Converts the current color object to a hexadecimal color string representation.
  ///
  /// The [leadingHashSign] parameter determines whether the resulting string should
  /// start with a '#' character. If set to `true`, the resulting string will start
  /// with a '#'. If set to `false`, the resulting string will not start with a '#'.
  ///
  /// Returns a string representing the current color object in hexadecimal format.
  /// The string will be in the format '#AARRGGBB', where AA is the alpha channel,
  /// RR is the red channel, GG is the green channel, and BB is the blue channel.
  /// The alpha channel is optional and defaults to 'FF' if not provided.
  ///
  /// Example usage:
  ///   final color = Color.fromARGB(128, 255, 0, 0);
  ///   final hexString = color.toHex(); // '#80FF0000'
  ///
  ///   final color = Color.fromARGB(255, 0, 255, 0);
  ///   final hexString = color.toHex(leadingHashSign: false); // 'FF00FF00'
  ///
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0').toUpperCase()}'
      '${red.toRadixString(16).padLeft(2, '0').toUpperCase()}'
      '${green.toRadixString(16).padLeft(2, '0').toUpperCase()}'
      '${blue.toRadixString(16).padLeft(2, '0').toUpperCase()}';
}
