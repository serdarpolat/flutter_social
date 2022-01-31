import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social/core/core_files.dart';

class PostItemActions extends StatelessWidget {
  const PostItemActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.p(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "Like".toICON,
                    color: Clr.whiter,
                    width: Sizes.h(context, 20),
                  ),
                  SizedBox(width: Sizes.w(context, 4)),
                  Text(
                    "2,245",
                    style: TextStyle(
                      fontSize: Sizes.h(context, 12),
                      height: 1.33,
                      color: Clr.whiter,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(width: Sizes.w(context, 16)),
              Row(
                children: [
                  SvgPicture.asset(
                    "Comment".toICON,
                    color: Clr.whiter,
                    width: Sizes.h(context, 20),
                  ),
                  SizedBox(width: Sizes.w(context, 4)),
                  Text(
                    "45",
                    style: TextStyle(
                      fontSize: Sizes.h(context, 12),
                      height: 1.33,
                      color: Clr.whiter,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(width: Sizes.w(context, 16)),
              Row(
                children: [
                  SvgPicture.asset(
                    "Share".toICON,
                    color: Clr.whiter,
                    width: Sizes.h(context, 20),
                  ),
                  SizedBox(width: Sizes.w(context, 4)),
                  Text(
                    "124",
                    style: TextStyle(
                      fontSize: Sizes.h(context, 12),
                      height: 1.33,
                      color: Clr.whiter,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SvgPicture.asset(
            "Bookmark".toICON,
            color: Clr.whiter,
            width: Sizes.h(context, 20),
          ),
        ],
      ),
    );
  }
}
