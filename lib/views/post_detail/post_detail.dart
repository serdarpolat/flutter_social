import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';
import 'package:social/views/components/post_item.dart';
import 'package:social/views/post_detail/comments.dart';
import 'package:social/views/post_detail/header.dart';
import 'package:social/views/post_detail/message_sender.dart';

class PostDetail extends StatelessWidget {
  const PostDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Clr.darkBlack,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: Sizes.h(context, 24)),
                  PostDetailHeader(),
                  SizedBox(height: Sizes.h(context, 24)),
                  PostItem(postModel: posts[1]),
                  Container(
                    width: Sizes.width(context),
                    height: 0.5,
                    color: Clr.gray,
                  ),
                  SizedBox(height: Sizes.h(context, 24)),
                  PostDetailComments(),
                  SizedBox(height: Sizes.h(context, 68)),
                ],
              ),
            ),
            PostDetailMessageSender()
          ],
        ),
      ),
    );
  }
}
