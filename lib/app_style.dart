import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color mainBG = Color(0xffFCFCFC);
const Color white = Color(0xffffffff);
const Color grey = Color(0xff9397A0);
const Color lightGrey = Color(0xffA7A7A7);
const Color blue = Color(0xff5474FD);
const Color lightBlue = Color(0xff583B1FF);
const Color black = Color(0xff19202D);

final kBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(16),
  borderSide: BorderSide.none,
);

final poppinsBold = GoogleFonts.poppins(
  color: black,
  fontWeight: FontWeight.w700
);
final poppinsSemiBold = GoogleFonts.poppins(
  color: black,
  fontWeight: FontWeight.w600
);
final poppinsMedium = GoogleFonts.poppins(
  color: black,
  fontWeight: FontWeight.w500
);
final poppinsRegular = GoogleFonts.poppins(
  color: black,
  fontWeight: FontWeight.w400
);
