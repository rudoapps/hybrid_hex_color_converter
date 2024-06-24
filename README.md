![HybridListTile Header](https://github.com/neyenRudo/hybrid-storage/blob/flutter/images/hybrid-hex-color-converter/flutter/images/hybid-hex-color-converter/hybrid_hex_color_white.png?raw=true) 

# Hybrid Hex Color Converter

The package is a useful tool for working with hexadecimal colors in Flutter. This package provides an extension called HexColor that can be used on Color objects in Flutter.


## Functions provided by the package:


   - **fromHex(String hexString)**: This function allows you to convert a hexadecimal string into a Color object. The string can be in formats like "aabbcc" or "ffaabbcc" and may include an optional  "#" sign at the beginning.


   - **toHex({bool leadingHashSign = true}):** This function returns the hexadecimal representation of a color in the RGBA format. It allows you to specify whether or not to include the "#" sign at the beginning of the hexadecimal code.

## Using the package:

To use this package, simply import the package into your Flutter file and use the HexColor extension on Color objects to convert colors to and from hexadecimal formats easily and efficiently.








##### Convert a hexadecimal string to a Color object:

```bash
import 'package:flutter/material.dart';
import 'package:hybrid_hex_color_converter/hybrid_hex_color_converter.dart';

void main() {
  Color color = HexColor.fromHex("#FF0000"); // Convert the red color intos flutter Color
  print(color);
}
```

##### Convert a Color object to a hexadecimal string:

```bash
import 'package:flutter/material.dart';
import 'package:hybrid_hex_color_converter/hybrid_hex_color_converter.dart';

void main() {
  Color color = Colors.green;
  String hexString = color.toHex(); //Converts the green color into his hexadecimal representation 
  print(hexString); 
}
```



## Autor ✒️

* **Neyen Ortega Sessarego** - *Flutter Developer* - [neyen@rudo.es](neyen@rudo.es)
---

With ❤️ by RudoApps Flutter Team 😊

![Rudo Apps](https://rudo.es/wp-content/uploads/logo-rudo.svg)
