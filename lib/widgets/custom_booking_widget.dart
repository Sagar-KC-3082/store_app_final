import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/widgets/add_item_widget.dart';


class CustomBookingWidget extends StatelessWidget {

  final String amount;
  final String name;
  final String description;
  CustomBookingWidget({this.amount,this.name,this.description});

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
          name == "Sagar" ? AddItemWidget1(comingFromServices:true,title1: name,title2: "Heavy Food Item",price: "45\$",imageUrl: "assets/images/user2.jpg",) :
          AddItemWidget1(comingFromServices:true,title1: name,title2: "Medium Food Item",price: "45\$",imageUrl: "assets/images/user3.jpg",),
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

          Stack(
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
          ),


          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
