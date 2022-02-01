import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social/core/core_files.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Sizes.width(context),
      padding: EdgeInsets.symmetric(horizontal: Sizes.p(context)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipOval(
            child: CachedNetworkImage(
              imageUrl: "https://randomuser.me/api/portraits/women/33.jpg",
              width: Sizes.h(context, 36),
              height: Sizes.h(context, 36),
              fit: BoxFit.fitWidth,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                child:
                    CircularProgressIndicator(value: downloadProgress.progress),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          SizedBox(width: Sizes.h(context, 8)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jessica Thompson",
                  style: TextStyle(
                    color: Clr.whiter,
                    fontSize: Sizes.h(context, 14),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: Sizes.h(context, 5)),
                Text(
                  "❤",
                  style: TextStyle(
                    color: Clr.whiter,
                    fontSize: Sizes.h(context, 14),
                  ),
                ),
                SizedBox(height: Sizes.h(context, 5)),
                Text(
                  "2m ago - 86 likes",
                  style: TextStyle(
                    color: Clr.lightGray,
                    fontSize: Sizes.h(context, 14),
                  ),
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            "Like".toICON,
            color: Clr.lightGray,
            height: Sizes.h(context, 20),
          ),
        ],
      ),
    );
  }
}
