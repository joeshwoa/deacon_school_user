import 'package:deacon_school_user/Core/unit/color_data.dart';
import 'package:deacon_school_user/Core/widget/church_melody_card_custom.dart';
import 'package:deacon_school_user/Core/widget/notification_card_custom.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NotificationsBoxCustom extends StatelessWidget {
  const NotificationsBoxCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.86,
      height: 350,
      child: Material(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
          topRight: Radius.circular(16),
          topLeft: Radius.circular(0),
        ),
        child: Container(
          padding: EdgeInsets.all(8),

          width: MediaQuery.of(context).size.width*0.86,
          height: 350,
          decoration: BoxDecoration(
              color: ColorData.whiteColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                topLeft: Radius.circular(0),
              ),
              border: Border.all(
                color: ColorData.primaryColor,
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF000000).withOpacity(0.1),
                  blurRadius: 8,
                  spreadRadius: 4,
                )
              ]
          ),
          child: ListView(
            children: [
              NotificationCardCustom(),
              NotificationCardCustom(),
              NotificationCardCustom(),
              NotificationCardCustom(),
              NotificationCardCustom(),
              NotificationCardCustom(),
              NotificationCardCustom(),
            ],
          ),
        ),
      ),
    );
  }
}
