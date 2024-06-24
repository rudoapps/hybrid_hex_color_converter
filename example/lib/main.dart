import 'package:flutter/material.dart';
import 'package:hybrid_hex_color_converter/hybrid_hex_color_converter.dart';

void main() {
  /// Test to see the conversion from hex to color
  Color redColor = HexColor.fromHex('#F44336');
  Color greenColor = HexColor.fromHex('#4CAF50');
  Color blueColor = HexColor.fromHex('#2196F3');
  Color whiteColor = HexColor.fromHex('#ffffff');
  Color blackColor = HexColor.fromHex('#000000');
  Color pinkColor = HexColor.fromHex('#E91E63');

  print(redColor);
  print(greenColor);
  print(blueColor);
  print(whiteColor);
  print(blackColor);
  print(pinkColor);

  ///Conversion withouth hash sign
  String blueString = Colors.blue.toHex(leadingHashSign: false);
  String redString = Colors.red.toHex(leadingHashSign: false);
  String purpleString = Colors.purple.toHex(leadingHashSign: false);

  print(blueString);
  print(redString);
  print(purpleString);

  /// Conversion with hash sign
  String greenWithHash = Colors.green.toHex();
  String orangeWithHash = Colors.orange.toHex();
  String pinkWithHash = Colors.pink.toHex();

  print(greenWithHash);
  print(orangeWithHash);
  print(pinkWithHash);
}
