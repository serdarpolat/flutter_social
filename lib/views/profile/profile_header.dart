import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.width(context),
      height: Sizes.h(context, 160),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CachedNetworkImage(
            imageUrl:
                "https://images.unsplash.com/photo-1536849460588-696219a9e98d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1431&q=80",
            width: Sizes.width(context),
            height: Sizes.h(context, 160),
            fit: BoxFit.fitWidth,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(
              child:
                  CircularProgressIndicator(value: downloadProgress.progress),
            ),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          Positioned(
            bottom: -Sizes.h(context, 79),
            left: (Sizes.width(context) - Sizes.h(context, 150)) / 2,
            child: Container(
              width: Sizes.h(context, 150),
              height: Sizes.h(context, 150),
              margin: EdgeInsets.only(bottom: Sizes.h(context, 4)),
              padding: EdgeInsets.all(Sizes.h(context, 2)),
              child: Container(
                padding: EdgeInsets.all(Sizes.h(context, 2)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://images.unsplash.com/photo-1586297135537-94bc9ba060aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
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
          ),
        ],
      ),
    );
  }
}
