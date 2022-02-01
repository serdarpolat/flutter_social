import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:social/core/core_files.dart';
import 'package:social/core/models/alert_model.dart';

class AlertItem extends StatelessWidget {
  const AlertItem({
    Key? key,
    required this.alert,
  }) : super(key: key);
  final AlertModel alert;

  @override
  Widget build(BuildContext context) {
    String icon = getIcon(alert.alertType, alert.connectors);
    Color iconClr = getColor(alert.alertType);
    String names = getNames(alert.alertType, alert.connectors);
    String subtitle = getSubtitle(alert.alertType);
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.p(context),
        vertical: Sizes.h(context, 17),
      ),
      width: Sizes.width(context),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: Sizes.h(context, 40),
            height: Sizes.h(context, 40),
            padding: EdgeInsets.all(Sizes.h(context, 10)),
            child: alert.alertType != AlertType.BIRTHDAY
                ? SvgPicture.asset(
                    icon.toICON,
                    color: iconClr,
                  )
                : Center(
                    child: Text(
                      icon,
                      style: TextStyle(
                        color: Clr.blue,
                        fontSize: Sizes.h(context, 15),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Clr.gray,
            ),
          ),
          SizedBox(
            width: Sizes.h(context, 12),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$names ",
                style: TextStyle(
                  color: Clr.whiter,
                  fontSize: Sizes.h(context, 15),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              Text(
                "$subtitle.",
                style: TextStyle(
                  color: Clr.whiter,
                  fontSize: Sizes.h(context, 15),
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1,
                ),
              ),
              Text(
                alert.time,
                style: TextStyle(
                  color: Clr.lightGray,
                  fontSize: Sizes.h(context, 13),
                  letterSpacing: 1,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Clr.gray,
            width: 0.5,
          ),
        ),
      ),
    );
  }
}
