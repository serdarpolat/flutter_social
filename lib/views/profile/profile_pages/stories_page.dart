import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';

class StoriesPage extends StatelessWidget {
  const StoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "StoriesPage",
          style: TextStyle(
            color: Clr.whiter,
          ),
        )
      ],
    );
  }
}
