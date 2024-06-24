import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:hybrid_hex_color_converter/hybrid_hex_color_converter.dart';

void main() {
  group('HexColor', () {
    /// Test to see the conversion from hex to color
    test('fromHex should convert hex string to Color', () {
      expect(HexColor.fromHex('#F44336').value, equals(Colors.red.value));
      expect(HexColor.fromHex('#4CAF50').value, equals(Colors.green.value));
      expect(HexColor.fromHex('#2196F3').value, equals(Colors.blue.value));
      expect(HexColor.fromHex('#ffffff').value, equals(Colors.white.value));
      expect(HexColor.fromHex('#000000').value, equals(Colors.black.value));
      expect(HexColor.fromHex('#E91E63').value, equals(Colors.pink.value));
    });

    /// Test to see the conversion withouth hash sign
    test('toHex should convert Color to hex string', () {
      expect(Colors.blue.toHex(leadingHashSign: false), equals('FF2196F3'));
      expect(Colors.red.toHex(leadingHashSign: false), equals('FFF44336'));
      expect(Colors.purple.toHex(leadingHashSign: false), equals('FF9C27B0'));
    });

    /// Test to see the conversion with hash sign
    test(
        'toHex should convert Color to hexadecimal string with leading hash sign',
        () {
      expect(Colors.green.toHex(), equals('#FF4CAF50'));
      expect(Colors.orange.toHex(), equals('#FFFF9800'));
      expect(Colors.pink.toHex(), equals('#FFE91E63'));
    });
  });
}
