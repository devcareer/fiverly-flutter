import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

var fonts1 = GoogleFonts.roboto(
  fontWeight: FontWeight.bold,
  fontSize: 34.0,
);

var fonts2 = GoogleFonts.roboto(
  fontSize: 14.0,
);
const textInputDecorations = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
      width: 1.0,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.blue,
      width: 1.0,
    ),
  ),
);

var containerDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(4),
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.5),
    ),
  ],
);

var buttonDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(25.0),
  color: Color(0xffdb3022),
);
var containerIcons = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(24),
);
var buttonColor = TextStyle(
  color: Colors.white,
);

/*var containerImage = BoxDecoration(
    color: Colors.yellow[900],
        );
 */

