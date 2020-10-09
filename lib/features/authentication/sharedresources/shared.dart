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

var virtualsearchFonts = GoogleFonts.roboto(
  fontSize: 18.0,
);

var virtualImage = BoxDecoration(
  image: DecorationImage(
      image: AssetImage("images/virtualSearch.png"), fit: BoxFit.cover),
);
var virtualTxetFont = GoogleFonts.roboto(
  fontSize: 24.0,
  color: Colors.white,
);

var uploadDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(25.0),
  color: Colors.transparent,
  border: Border.all(color: Colors.white)
);
var takingPhoto = BoxDecoration(
  image: DecorationImage(
      image: AssetImage("images/takingphoto.png"), fit: BoxFit.cover),
);

var cameraContainer = BoxDecoration(
  borderRadius: BorderRadius.circular(50.0),
  color: Color(0xffdb3022),
);