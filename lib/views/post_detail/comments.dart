import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';
import 'package:social/views/components/comment_item.dart';

class PostDetailComments extends StatelessWidget {
  const PostDetailComments({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.p(context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "COMMENTS (45)",
                style: TextStyle(
                  color: Clr.whiter,
                  fontSize: Sizes.h(context, 13),
                  letterSpacing: 1,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Recent",
                    style: TextStyle(
                      color: Clr.whiter,
                      fontSize: Sizes.h(context, 13),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Clr.whiter,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: Sizes.h(context, 24)),
        ...List.generate(
            6,
            (index) => Padding(
                  padding: EdgeInsets.only(bottom: Sizes.h(context, 20)),
                  child: CommentItem(),
                )),
      ],
    );
  }
}
