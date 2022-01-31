import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';

class PostTypeText extends StatelessWidget {
  const PostTypeText({
    Key? key,
    required this.postModel,
  }) : super(key: key);

  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.p(context)),
      child: Text(
        postModel.title!,
        style: TextStyle(
          fontSize: Sizes.h(context, 16),
          height: 1.5,
          color: Clr.whiter,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
