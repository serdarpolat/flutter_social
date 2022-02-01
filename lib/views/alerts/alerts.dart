import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social/core/core_files.dart';
import 'package:social/core/models/alert_model.dart';
import 'package:social/views/components/alert_item.dart';

class Alerts extends StatelessWidget {
  const Alerts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Sizes.h(context, 16)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Alerts",
                style: TextStyle(
                  color: Clr.whiter,
                  fontSize: Sizes.h(context, 20),
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                    Clr.pink.withOpacity(0.1),
                  ),
                  padding: MaterialStateProperty.all(EdgeInsets.all(0)),
                ),
                child: Text(
                  "Mark all as read",
                  style: TextStyle(
                    color: Clr.pink,
                    fontSize: Sizes.h(context, 14),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: Sizes.h(context, 24)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.p(context)),
            child: Text(
              "TODAY",
              style: TextStyle(
                color: Clr.lightGray,
                fontSize: Sizes.h(context, 14),
                letterSpacing: 1,
                height: 1.25,
              ),
            ),
          ),
          SizedBox(height: Sizes.h(context, 12)),
          ...List.generate(alerts.length, (index) {
            return AlertItem(alert: alerts[index]);
          }),
          SizedBox(height: Sizes.h(context, 88)),
        ],
      ),
    );
  }
}
