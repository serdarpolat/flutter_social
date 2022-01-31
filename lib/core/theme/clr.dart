import 'package:flutter/material.dart';

class Clr {
  Clr._();

  static const Color darkBlack = Color(0xff181A1C);
  static const LinearGradient gradient = LinearGradient(
    colors: [
      Color(0xffF62E8E),
      Color(0xffAC1AF0),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const Color blue = Color(0xff2E8AF6);
  static const Color pink = Color(0xffF62E8E);
  static const Color white = Color(0xffECEBED);
  static const Color whiter = Color(0xffffffff);
  static const Color gray = Color(0xff323436);
  static const Color lightGray = Color(0xff727477);
}
