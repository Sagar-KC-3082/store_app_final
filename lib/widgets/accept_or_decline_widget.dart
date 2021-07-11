import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';


class AddOrRejectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                width: Get.width*0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(color: Colors.grey.withOpacity(0.2),blurRadius: 5,spreadRadius: 3,offset: Offset(3,3))
                    ]
                ),
                padding: EdgeInsets.all(12),
                child: Center(child: Text("Decline",style: CustomTextStyle.mediumTextStyle(),)),
              ),
            ),
            Expanded(
              child: Container(
                width: Get.width*0.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color:AppColors.primaryDarkOrange,
                    boxShadow: [
                      BoxShadow(color: Colors.grey.withOpacity(0.2),blurRadius: 5,spreadRadius: 3,offset: Offset(3,3))
                    ]
                ),
                padding: EdgeInsets.all(12),
                child: Center(child: Text("Accept",style: CustomTextStyle.mediumTextStyle(color: Colors.white),)),
              ),
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.2),blurRadius: 5,spreadRadius: 3,offset: Offset(3,3))
              ]
          ),
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 5,),
              Icon(Icons.arrow_back_ios,size: 15,color: Colors.grey,),
              Icon(Icons.arrow_forward_ios,size: 15,color: Colors.grey,),
              SizedBox(width: 2,),
            ],
          ),
        ),

      ],
    );
  }
}
