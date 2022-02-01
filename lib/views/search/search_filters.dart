import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';
import 'package:social/core/providers/provider_files.dart';
import 'package:social/views/components/search_filter_item.dart';

class SearchFilters extends StatelessWidget {
  const SearchFilters({
    Key? key,
    required this.searchProvider,
  }) : super(key: key);
  final SearchProvider searchProvider;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: Sizes.h(context, 37),
      child: ListView.builder(
        itemCount: filterItems.length,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.only(left: Sizes.p(context)),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(right: Sizes.h(context, 12)),
            child: SearchFilterItem(
              title: filterItems[index],
              isActive: searchProvider.filter == index,
              onTap: () {
                searchProvider.setFilter(index);
              },
            ),
          );
        },
      ),
    );
  }
}
