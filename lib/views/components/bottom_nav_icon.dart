import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social/core/core_files.dart';

class BottomAddIcon extends StatelessWidget {
  const BottomAddIcon({Key? key, this.onTap}) : super(key: key);
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(40),
      child: Ink(
        decoration: BoxDecoration(
          gradient: Clr.gradient,
          shape: BoxShape.circle,
        ),
        child: InkWell(
          onTap: onTap,
          hoverColor: Clr.gray.withOpacity(0.25),
          borderRadius: BorderRadius.circular(40),
          child: Container(
            width: Sizes.h(context, 40),
            height: Sizes.h(context, 40),
            padding: EdgeInsets.all(8),
            child: SvgPicture.asset(
              "Plus".toICON,
              width: Sizes.h(context, 24),
              color: Clr.white,
            ),
          ),
        ),
      ),
    );
  }
}
