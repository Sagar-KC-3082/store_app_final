import 'package:flutter/material.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/models/notification/notification_model.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/notification_widget.dart';


class NotificationScreen extends StatelessWidget {

  final List<NotificationModel>_notificationList = [
    NotificationModel(icon: Icon(Icons.notifications_active_outlined),title: "Your food has received 4 star by a customer",dateTime: "April 30, 2014 1:01 PM",text: "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo"),
    NotificationModel(icon: Icon(Icons.attach_money_rounded),title: "Your payment has been cleared",dateTime: "April 30, 2014 1:01 PM",text: "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo"),
    NotificationModel(icon: Icon(Icons.margin),title: "Please check your account for more info",dateTime: "April 30, 2014 1:01 PM",text: "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo"),
    NotificationModel(icon: Icon(Icons.attach_money_rounded),title: "Your payment has been cleared",dateTime: "April 30, 2014 1:01 PM",text: "Culpa cillum consectetur labore nulla nulla magna irure. Id veniam culpa officia aute dolor amet deserunt ex proident commodo"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarRowWithCustomIconWithNoSpacing(title: "Notification",hideBackButton: true,),
              SizedBox(height: 30,),

              Expanded(
                child: ListView.builder(
                  itemCount: _notificationList.length,
                  itemBuilder: (context,index){
                    return NotificationWidget(notificationModel: _notificationList[index],);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
