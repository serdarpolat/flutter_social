import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social/core/core_files.dart';

class PostDetailHeader extends StatelessWidget {
  const PostDetailHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.p(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Methods.popBack(context),
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: Sizes.h(context, 32),
              height: Sizes.h(context, 32),
              padding: EdgeInsets.all(Sizes.h(context, 8)),
              child: SvgPicture.asset(
                "ArrowLeft".toICON,
                color: Clr.whiter,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Clr.lightGray,
                  width: 1,
                ),
              ),
            ),
          ),
          Text(
            "POST",
            style: TextStyle(
              color: Clr.whiter,
              fontWeight: FontWeight.bold,
              fontSize: Sizes.h(context, 16),
              letterSpacing: 1,
            ),
          ),
          SizedBox(
            width: Sizes.h(context, 32),
          ),
        ],
      ),
    );
  }
}
