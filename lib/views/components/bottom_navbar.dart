import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social/core/core_files.dart';
import 'package:social/core/providers/provider_files.dart';
import 'package:social/views/components/bottom_add_icon.dart';
import 'package:social/views/components/bottom_nav_icon.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of(context);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: Sizes.width(context),
        height: Sizes.h(context, 64),
        padding: EdgeInsets.symmetric(horizontal: Sizes.p(context)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavIcon(
              img: "Feed",
              onTap: () {
                pageProvider.setPage(0);
              },
              isActive: pageProvider.page == 0,
            ),
            BottomNavIcon(
              img: "Search",
              onTap: () {
                pageProvider.setPage(1);
              },
              isActive: pageProvider.page == 1,
            ),
            BottomAddIcon(
              onTap: () {},
            ),
            BottomNavIcon(
              img: "Alert",
              onTap: () {
                pageProvider.setPage(2);
              },
              isActive: pageProvider.page == 2,
            ),
            BottomNavIcon(
              img: "Profile",
              onTap: () {
                pageProvider.setPage(3);
              },
              isActive: pageProvider.page == 3,
            ),
          ],
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
