import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';

class SearchFilterItem extends StatelessWidget {
  const SearchFilterItem({
    Key? key,
    required this.title,
    required this.isActive,
    this.onTap,
  }) : super(key: key);
  final String title;
  final bool isActive;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: isActive ? Clr.blue : Colors.transparent,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: isActive ? Clr.blue : Clr.lightGray,
          width: 1,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(50),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.h(context, 18),
            vertical: Sizes.h(context, 10),
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Clr.whiter,
              fontSize: Sizes.h(context, 14),
              fontWeight: isActive ? FontWeight.w700 : FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

List<String> filterItems = [
  "All",
  "Profiles",
  "Photos",
  "Videos",
  "Text",
  "Links",
];
