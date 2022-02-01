import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';
import 'package:social/views/components/post_item.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(2, (index) {
        PostModel post = posts[index];
        return PostItem(postModel: post);
      }),
    );
  }
}
