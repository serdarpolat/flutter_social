import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social/core/core_files.dart';

class BottomNavIcon extends StatelessWidget {
  const BottomNavIcon({
    Key? key,
    required this.img,
    this.onTap,
    required this.isActive,
  }) : super(key: key);
  final String img;
  final Function()? onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        hoverColor: Clr.gray.withOpacity(0.25),
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: Sizes.h(context, 40),
          height: Sizes.h(context, 40),
          padding: EdgeInsets.all(8),
          child: SvgPicture.asset(
            img.toICON,
            width: Sizes.h(context, 24),
            color: isActive ? Clr.whiter : Clr.whiter.withOpacity(0.25),
          ),
        ),
      ),
    );
  }
}
