import 'package:flutter/material.dart';

class Sizes {
  Sizes._();

  static double width(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double height(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double w(BuildContext context, double size) =>
      (width(context) * size) / 375;
  static double h(BuildContext context, double size) =>
      (height(context) * size) / 812;
  static double p(BuildContext context) => Sizes.w(context, 24);
}
