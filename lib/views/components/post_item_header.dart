import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social/core/core_files.dart';

class PostItemHeader extends StatelessWidget {
  const PostItemHeader({
    Key? key,
    required this.postModel,
  }) : super(key: key);
  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.p(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.network(
                  postModel.usrImg,
                  width: Sizes.h(context, 32),
                  height: Sizes.h(context, 32),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: Sizes.w(context, 8)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    postModel.userName,
                    style: TextStyle(
                      color: Clr.whiter,
                      fontSize: Sizes.h(context, 14),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    postModel.publishTime,
                    style: TextStyle(
                      color: Clr.lightGray,
                      fontSize: Sizes.h(context, 12),
                      fontWeight: FontWeight.w500,
                      height: 1.33,
                    ),
                  ),
                ],
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(4),
            child: SvgPicture.asset(
              "DotsVert".toICON,
              color: Clr.lightGray,
              width: Sizes.h(context, 24),
            ),
          ),
        ],
      ),
    );
  }
}
