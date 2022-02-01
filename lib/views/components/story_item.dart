import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    required this.storyItem,
  }) : super(key: key);

  final StoryItemModel storyItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.h(context, 100),
      height: Sizes.h(context, 140),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              Sizes.h(context, 16),
            ),
            child: CachedNetworkImage(
              imageUrl: storyItem.story,
              width: Sizes.h(context, 100),
              height: Sizes.h(context, 140),
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                      child: CircularProgressIndicator(
                          value: downloadProgress.progress)),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Container(
            width: Sizes.h(context, 100),
            height: Sizes.h(context, 140),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black.withOpacity(0.6)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(
                Sizes.h(context, 16),
              ),
            ),
          ),
          StoryItemUserImage(
            userImg: storyItem.user,
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          Sizes.h(context, 16),
        ),
      ),
    );
  }
}

class StoryItemUserImage extends StatelessWidget {
  const StoryItemUserImage({Key? key, required this.userImg}) : super(key: key);
  final String userImg;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: Sizes.h(context, 40),
        height: Sizes.h(context, 40),
        margin: EdgeInsets.only(bottom: Sizes.h(context, 4)),
        padding: EdgeInsets.all(Sizes.h(context, 2)),
        child: Container(
          padding: EdgeInsets.all(Sizes.h(context, 2)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: CachedNetworkImage(
              imageUrl: userImg,
              progressIndicatorBuilder: (context, url, downloadProgress) {
                return Center(
                  child: CircularProgressIndicator(
                      value: downloadProgress.progress),
                );
              },
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          decoration: BoxDecoration(
            color: Clr.darkBlack,
            shape: BoxShape.circle,
          ),
        ),
        decoration: BoxDecoration(
          gradient: Clr.gradient,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
