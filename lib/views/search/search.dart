import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social/core/core_files.dart';
import 'package:social/core/providers/provider_files.dart';
import 'package:social/views/components/post_item.dart';
import 'package:social/views/components/search_filter_item.dart';
import 'package:social/views/components/search_input.dart';
import 'package:social/views/search/search_filters.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Sizes.h(context, 32)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.p(context)),
            child: SearchInput(),
          ),
          SizedBox(height: Sizes.h(context, 24)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.p(context)),
            child: Text(
              "Popular",
              style: TextStyle(
                  fontWeight: FontWeight.w700, color: Clr.whiter, height: 1.5),
            ),
          ),
          SizedBox(height: Sizes.h(context, 12)),
          Consumer(builder: (context, SearchProvider searchProvider, child) {
            return SearchFilters(
              searchProvider: searchProvider,
            );
          }),
          SizedBox(height: Sizes.h(context, 24)),
          ...List.generate(posts.length, (index) {
            PostModel post = posts[index];
            return index == 1 || index == 4
                ? PostItem(postModel: post)
                : SizedBox();
          }),
          SizedBox(height: Sizes.h(context, 88)),
        ],
      ),
    );
  }
}
