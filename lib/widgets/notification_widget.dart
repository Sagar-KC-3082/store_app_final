import 'package:flutter/material.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/models/notification/notification_model.dart';


class NotificationWidget extends StatelessWidget {

  final NotificationModel notificationModel;
  NotificationWidget({this.notificationModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0,vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          notificationModel.icon,
          SizedBox(width: 15,),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(notificationModel.title,style: CustomTextStyle.smallBoldTextStyle1(),),
                SizedBox(height: 5,),
                Text(notificationModel.text,style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                SizedBox(height: 5,),
                Text(notificationModel.dateTime,style: CustomTextStyle.ultraSmallTextStyle(),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
