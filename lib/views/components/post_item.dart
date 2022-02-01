import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';
import 'package:social/views/components/post_item_actions.dart';
import 'package:social/views/components/post_item_header.dart';
import 'package:social/views/components/post_type_media.dart';
import 'package:social/views/components/post_type_text.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    Key? key,
    required this.postModel,
    this.onTap,
  }) : super(key: key);
  final PostModel postModel;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.width(context),
      padding: EdgeInsets.only(
        top: Sizes.p(context),
        bottom: Sizes.h(context, 16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostItemHeader(
            postModel: postModel,
          ),
          InkWell(
            onTap: onTap,
            child: Column(
              children: [
                SizedBox(height: Sizes.h(context, 16)),
                if (postModel.title != null) PostTypeText(postModel: postModel),
                if (postModel.images != null)
                  PostTypeMedia(postModel: postModel),
                SizedBox(height: Sizes.h(context, 16)),
              ],
            ),
          ),
          PostItemActions(),
        ],
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Clr.gray,
            width: 0.5,
          ),
        ),
      ),
    );
  }
}
