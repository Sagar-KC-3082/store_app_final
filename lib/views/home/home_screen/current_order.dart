import 'package:flutter/material.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/custom_order_widget.dart';

class CurrentOrderView extends StatelessWidget {
  final String title;
  final bool isCurrentOrder;

  CurrentOrderView({this.title,this.isCurrentOrder});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
              child: CustomAppBarRowWithCustomIconWithNoSpacing(title: title,),
            ),
            SizedBox(height: 10,),

            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  CustomOrderWidget(name: "Sagar",amount: "\$123.45",description: "2 New Nehru Nagar Indore 457415,Madhya Pradesh",isCurrentOrder: isCurrentOrder,),
                  CustomOrderWidget(name: "Madan",amount: "\$34.45",description: "Delhi, NCR , non commercial residential area, 2 New Nehru Nagar Indore 457415,Madhya Pradesh",isCurrentOrder: isCurrentOrder),
                  CustomOrderWidget(name: "Sagar",amount: "\$123.45",description: "2 New Nehru Nagar Indore 457415,Madhya Pradesh",isCurrentOrder: isCurrentOrder),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
