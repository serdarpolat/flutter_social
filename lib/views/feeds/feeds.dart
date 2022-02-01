import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';
import 'package:social/views/components/post_item.dart';
import 'package:social/views/feeds/feeds_header.dart';
import 'package:social/views/feeds/stories_list.dart';
import 'package:social/views/post_detail/post_detail.dart';

class Feeds extends StatelessWidget {
  const Feeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: Sizes.h(context, 24)),
          FeedsHeader(),
          SizedBox(height: Sizes.h(context, 32)),
          StoriesList(),
          SizedBox(height: Sizes.h(context, 24)),
          ...List.generate(posts.length, (index) {
            PostModel post = posts[index];
            return PostItem(
              postModel: post,
              onTap: () {
                Methods.pushTo(context, PostDetail());
              },
            );
          }),
          SizedBox(height: Sizes.h(context, 88)),
        ],
      ),
    );
  }
}
