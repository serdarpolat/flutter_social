import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social/core/core_files.dart';

class PostDetailMessageSender extends StatelessWidget {
  const PostDetailMessageSender({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: Sizes.width(context),
        height: Sizes.h(context, 64),
        padding: EdgeInsets.symmetric(
          horizontal: Sizes.h(context, 16),
          vertical: Sizes.h(context, 12),
        ),
        child: SizedBox(
          height: Sizes.h(context, 40),
          width: double.infinity,
          child: Stack(
            children: [
              TextField(
                style: TextStyle(
                  fontSize: Sizes.h(context, 15),
                  color: Clr.whiter,
                ),
                decoration: InputDecoration(
                  hintText: "Type your comment here...",
                  hintStyle: TextStyle(
                    color: Clr.white,
                  ),
                  filled: true,
                  fillColor: Clr.lightGray.withOpacity(0.5),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: Sizes.h(context, 22)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(44),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(44),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(44),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: Sizes.h(context, 4),
                right: Sizes.h(context, 4),
                child: Container(
                  width: Sizes.h(context, 32),
                  height: Sizes.h(context, 32),
                  padding: EdgeInsets.all(Sizes.h(context, 8)),
                  child: SvgPicture.asset(
                    "Send".toICON,
                    color: Clr.whiter,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: Clr.gradient,
                  ),
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Clr.black,
          border: Border(
            top: BorderSide(
              color: Clr.gray,
              width: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
