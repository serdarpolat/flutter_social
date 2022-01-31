import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';
import 'package:social/views/components/story_item.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.h(context, 140),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: Sizes.p(context)),
        physics: BouncingScrollPhysics(),
        itemCount: stories.length,
        itemBuilder: (BuildContext context, int index) {
          StoryItemModel story = stories[index];
          return Padding(
            padding: EdgeInsets.only(right: Sizes.w(context, 12)),
            child: StoryItem(storyItem: story),
          );
        },
      ),
    );
  }
}
