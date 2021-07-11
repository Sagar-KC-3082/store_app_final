import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/widgets/add_item_widget.dart';
import 'package:store_app/widgets/full_width_button.dart';

import 'accept_or_decline_widget.dart';


class CustomOrderWidget extends StatelessWidget {

  final String amount;
  final String name;
  final String description;
  final bool isCurrentOrder;
  CustomOrderWidget({this.amount,this.name,this.description,this.isCurrentOrder});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.2),blurRadius: 5,spreadRadius: 3,offset: Offset(3,3))
          ]
      ),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
                Text("Items",style: CustomTextStyle.smallTextStyle1(),),
                Spacer(),
                Text(amount,style: CustomTextStyle.boldMediumTextStyle(),),
            ],
          ),
          SizedBox(height: 10,),
          name == "Sagar" ? AddItemWidget1(title1: "Butter Panner",title2: "Heavy Food Item",price: "45\$",imageUrl: "assets/images/foodItem7.png",) :
          AddItemWidget1(title1: "Palak Panner",title2: "Medium Food Item",price: "45\$",imageUrl: "assets/images/foodItem8.png",),
          SizedBox(height: 10,),
          Text("Customer",style: CustomTextStyle.mediumTextStyle(),),
          SizedBox(height: 10,),

          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.2),blurRadius: 5,spreadRadius: 3,offset: Offset(3,3))
                ]
            ),
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Text(name,style: CustomTextStyle.mediumTextStyle(),)),
                    SizedBox(width: 10,),
                    Icon(Icons.message,size:18,),
                    SizedBox(width: 10,),
                    Icon(Icons.call,size: 20,)
                  ],
                ),
                SizedBox(height: 5,),

                Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Text(description,style: CustomTextStyle.smallTextStyle1(),),
                )
              ],
            ),
          ),
          SizedBox(height:20,),

          isCurrentOrder == true ? AddOrRejectWidget():
              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Ready   for Parcel",
                borderRadius: BorderRadius.circular(30),
                padding: EdgeInsets.symmetric(vertical: 15),
              ),

          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
