import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social/core/metrics/sizes.dart';
import 'package:social/core/providers/page_provider.dart';
import 'package:social/core/theme/clr.dart';
import 'package:social/views/alerts/alerts.dart';
import 'package:social/views/components/bottom_navbar.dart';
import 'package:social/views/feeds/feeds.dart';
import 'package:social/views/profile/profile.dart';
import 'package:social/views/search/search.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of(context);
    return Scaffold(
      backgroundColor: Clr.darkBlack,
      body: SafeArea(
        child: SizedBox(
          width: Sizes.width(context),
          height: Sizes.height(context),
          child: Stack(
            children: [
              pages[pageProvider.page],
              BottomNavbar(),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> pages = [
  Feeds(),
  Search(),
  Alerts(),
  Profile(),
];
