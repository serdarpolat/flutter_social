import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.width(context),
      height: Sizes.h(context, 44),
      child: TextField(
        style: TextStyle(
          fontSize: Sizes.h(context, 17),
          fontWeight: FontWeight.w500,
          color: Clr.whiter,
        ),
        decoration: InputDecoration(
          hintText: "Search for people, posts, tags...",
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
    );
  }
}
