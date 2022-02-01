import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: Sizes.width(context),
          child: Text(
            "Alex Tsimikas",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Sizes.h(context, 20),
              color: Clr.whiter,
            ),
          ),
        ),
        SizedBox(height: Sizes.h(context, 8)),
        SizedBox(
          width: Sizes.width(context),
          child: Text(
            "Brooklyn, NY",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Sizes.h(context, 16),
              color: Clr.lightGray,
            ),
          ),
        ),
        SizedBox(height: Sizes.h(context, 12)),
        SizedBox(
          width: Sizes.width(context),
          child: Text(
            "Writer by Profession. Artist by Passion!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Sizes.h(context, 16),
              color: Clr.whiter,
            ),
          ),
        ),
        SizedBox(height: Sizes.h(context, 24)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Sizes.p(context)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "2,467",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: Sizes.h(context, 16),
                      color: Clr.whiter,
                    ),
                  ),
                  SizedBox(height: Sizes.h(context, 2)),
                  Text(
                    "Followers",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: Sizes.h(context, 16),
                      color: Clr.lightGray,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "1,589",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: Sizes.h(context, 16),
                      color: Clr.whiter,
                    ),
                  ),
                  SizedBox(height: Sizes.h(context, 2)),
                  Text(
                    "Following",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: Sizes.h(context, 16),
                      color: Clr.lightGray,
                    ),
                  ),
                ],
              ),
              Ink(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Clr.lightGray,
                    width: 1,
                  ),
                ),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: Sizes.h(context, 32),
                      vertical: Sizes.h(context, 10),
                    ),
                    child: Text(
                      "Edit Profile",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Clr.whiter,
                        fontSize: Sizes.h(context, 16),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
