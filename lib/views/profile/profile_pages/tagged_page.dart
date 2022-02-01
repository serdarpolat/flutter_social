import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';
import 'package:social/views/components/post_item.dart';

class TaggedPage extends StatelessWidget {
  const TaggedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(2, (index) {
        PostModel post = posts[index + 2];
        return PostItem(postModel: post);
      }),
    );
  }
}
