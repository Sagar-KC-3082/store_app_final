import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/widgets/custom_inkwell.dart';

class MyWalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Stack(
            children: [
              Container(
                height: Get.height*0.23,
                width: Get.width,),
              Container(
                height: Get.height*0.2,
                width: Get.width,
                decoration: BoxDecoration(
                    color: AppColors.primaryDarkOrange,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                ),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical:25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomInkWell(
                      onTap: (){Get.back();},
                      child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text("\$130",style:TextStyle( fontSize:32,fontWeight: FontWeight.w600,color: Colors.white,fontFamily: "PoppinsRegular",),),
                          SizedBox(height: 5,),
                          Text("Current Balance",style: CustomTextStyle.mediumTextStyle(color: Colors.white),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: Get.width,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.grey.withOpacity(0.2),spreadRadius:3,blurRadius: 5,offset: Offset(3,3))
                        ]
                    ),
                    margin: EdgeInsets.symmetric(horizontal: Get.width*0.1),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Withdrawal Amount",style: CustomTextStyle.appBarTextStyle(fontFamily: "PoppinsRegular"),)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),

            SizedBox(height: 30,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text("Transactions",style: CustomTextStyle.appBarTextStyle(fontFamily: "PoppinsRegular",color: Colors.grey),),
                  SizedBox(height: 10,),

                  TransactionWidget(imageUrl: "assets/images/user4.jpg",name: "Robert Downy Junior",date:"10 May, 10:34 pm",amount: "\$30.45",),
                  TransactionWidget(imageUrl: "assets/images/user2.jpg",name: "Anejlina Jolie",date:"12 June, 12:45 pm",amount: "\$123.45",),
                  TransactionWidget(imageUrl: "assets/images/user3.jpg",name: "Elizabeth Oslen",date:"23 Dec, 05:34 am",amount: "\$567.89",),
                  TransactionWidget(imageUrl: "assets/images/user4.jpg",name: "Robert Downy Junior",date:"10 May, 10:34pm",amount: "\$56.76",),

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}



class TransactionWidget extends StatelessWidget {

  final String imageUrl;
  final String name;
  final String date;
  final String amount;

  TransactionWidget({this.name,this.amount,this.imageUrl,this.date});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.2),spreadRadius:3,blurRadius: 5,offset: Offset(3,3))
          ]
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 3,vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(imageUrl),
          ),
          SizedBox(width: 15,),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,style: CustomTextStyle.smallBoldTextStyle1(),),
                Text(date,style: CustomTextStyle.smallTextStyle1(),)
              ],
            ),
          ),SizedBox(width: 10,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle
                ),
                padding: EdgeInsets.all(5),
                child: Icon(Icons.arrow_downward_outlined,color: Colors.white,size: 20,),
              ),
              SizedBox(height: 3,),
              Text(amount,style: CustomTextStyle.smallBoldTextStyle1(),)
            ],
          ),
        ],
      ),
    );
  }
}
