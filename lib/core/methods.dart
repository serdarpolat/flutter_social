import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Methods {
  Methods._();

  static pushTo(BuildContext context, Widget page) =>
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));

  static popBack(BuildContext context) => Navigator.of(context).pop();
}
