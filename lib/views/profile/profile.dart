import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social/core/core_files.dart';
import 'package:social/core/providers/provider_files.dart';
import 'package:social/views/components/post_item.dart';
import 'package:social/views/profile/profile_header.dart';
import 'package:social/views/profile/profile_info.dart';
import 'package:social/views/profile/profile_pages/liked_page.dart';
import 'package:social/views/profile/profile_pages/posts_page.dart';
import 'package:social/views/profile/profile_pages/stories_page.dart';
import 'package:social/views/profile/profile_pages/tagged_page.dart';
import 'package:social/views/profile/profile_tabbar.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, ProfileProvider profileProvider,
          Widget? child) {
        return SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHeader(),
              SizedBox(height: Sizes.h(context, 91)),
              ProfileInfo(),
              SizedBox(height: Sizes.h(context, 32)),
              ProfileTabbar(profileProvider: profileProvider),
              SizedBox(height: Sizes.h(context, 24)),
              profilePages[profileProvider.tab],
              SizedBox(height: Sizes.h(context, 88)),
            ],
          ),
        );
      },
    );
  }
}

List<Widget> profilePages = [
  PostsPage(),
  StoriesPage(),
  LikedPage(),
  TaggedPage(),
];
