import 'package:flutter/material.dart';

class Alerts extends StatelessWidget {
  const Alerts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Alert",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
