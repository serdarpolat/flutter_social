import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:social/core/core_files.dart';

class PostTypeMedia extends StatefulWidget {
  const PostTypeMedia({
    Key? key,
    required this.postModel,
  }) : super(key: key);

  final PostModel postModel;

  @override
  State<PostTypeMedia> createState() => _PostTypeMediaState();
}

class _PostTypeMediaState extends State<PostTypeMedia> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Sizes.h(context, 236),
          child: CarouselSlider(
            options: CarouselOptions(
                height: 214,
                aspectRatio: 16 / 9,
                viewportFraction: 0.85,
                reverse: false,
                enableInfiniteScroll: false,
                disableCenter: false,
                enlargeCenterPage: true,
                onPageChanged: (i, c) {
                  setState(() {
                    page = i;
                  });
                }),
            items: widget.postModel.images!.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(
                      Sizes.h(context, 16),
                    ),
                    child: SizedBox(
                      width: Sizes.w(context, 327),
                      child: Image.network(
                        i,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
        if (widget.postModel.images != null &&
            widget.postModel.images!.length > 1)
          SizedBox(height: Sizes.h(context, 16)),
        if (widget.postModel.images != null &&
            widget.postModel.images!.length > 1)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              postIndicator(page == 0),
              SizedBox(width: Sizes.w(context, 4)),
              postIndicator(page == 1),
              SizedBox(width: Sizes.w(context, 4)),
              postIndicator(page == 2),
            ],
          )
      ],
    );
  }

  Widget postIndicator(bool active) => Container(
        width: Sizes.h(context, 6),
        height: Sizes.h(context, 6),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: active ? Clr.pink : Clr.lightGray,
        ),
      );
}
