import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social/core/core_files.dart';

class FeedsHeader extends StatelessWidget {
  const FeedsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.width(context),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Sizes.p(context)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Good Morning, Alex.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Clr.whiter,
              ),
            ),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(32),
              child: Container(
                width: Sizes.h(context, 32),
                height: Sizes.h(context, 32),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SvgPicture.asset(
                        "Message".toICON,
                        width: Sizes.w(context, 16),
                        color: Clr.whiter,
                      ),
                    ),
                    Positioned(
                      top: Sizes.h(context, 6),
                      right: Sizes.h(context, 4),
                      child: Container(
                        width: Sizes.h(context, 7),
                        height: Sizes.h(context, 7),
                        decoration: BoxDecoration(
                          color: Clr.pink,
                          border: Border.all(
                            color: Clr.whiter,
                            width: 1.2,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Clr.lightGray,
                    width: 1,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
