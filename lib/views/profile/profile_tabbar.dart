import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';
import 'package:social/core/providers/profile_provider.dart';

class ProfileTabbar extends StatelessWidget {
  const ProfileTabbar({
    Key? key,
    required this.profileProvider,
  }) : super(key: key);
  final ProfileProvider profileProvider;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.p(context),
      ),
      child: Container(
        width: Sizes.width(context),
        height: 24,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Clr.lightGray,
              width: 0.5,
            ),
          ),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      profileProvider.setTab(0);
                    },
                    child: Text(
                      "Posts",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: profileProvider.tab == 0
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: Sizes.h(context, 16),
                        color: Clr.whiter,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      profileProvider.setTab(1);
                    },
                    child: Text(
                      "Stories",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: profileProvider.tab == 1
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: Sizes.h(context, 16),
                        color: Clr.whiter,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      profileProvider.setTab(2);
                    },
                    child: Text(
                      "Liked",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: profileProvider.tab == 2
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: Sizes.h(context, 16),
                        color: Clr.whiter,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      profileProvider.setTab(3);
                    },
                    child: Text(
                      "Tagged",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: profileProvider.tab == 3
                            ? FontWeight.bold
                            : FontWeight.normal,
                        fontSize: Sizes.h(context, 16),
                        color: Clr.whiter,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 240),
              left: ((Sizes.width(context) - (Sizes.p(context) * 2)) / 4) *
                  profileProvider.tab,
              bottom: -1.25,
              child: Container(
                width: (Sizes.width(context) - (Sizes.p(context) * 2)) / 4,
                height: 2,
                decoration: ShapeDecoration(
                  shape: StadiumBorder(
                    side: BorderSide(color: Clr.blue, width: 2),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
