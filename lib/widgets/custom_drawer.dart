import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/views/account/account_main_screen.dart';
import 'package:store_app/views/home/home_screen/wallet.dart';
import 'package:store_app/views/notification/notification_main_screen.dart';
import 'package:store_app/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [

          Container(
            height: Get.height*0.25,
            width: Get.width,
            color: AppColors.primaryDarkBlue,
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 0),
            child: Column(
              children: [
                Image.asset("assets/images/logo.png",height: Get.height*0.15,fit: BoxFit.cover,),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset("assets/images/user4.jpg",height: 60,width: 60,fit: BoxFit.cover,),
                    ),
                    SizedBox(width: 20,),
                    Text("Himalayan Das",style: CustomTextStyle.mediumTextStyle(color: Colors.white),)
                  ],
                )
              ],
            )
          ),

          SizedBox(height: Get.height*0.08,),

          CustomInkWell(
              onTap: (){
                Navigator.pop(context);
                },
              child: CustomRow(title: "Home",)
          ),
          CustomInkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return NotificationScreen();}));
                 },
              child: CustomRow(title: "Notification",)
          ),
          CustomInkWell(
              // onTap: (){Get.to(SnappyClassifiedNotificationView());},
              child: CustomRow(title: "History",)),
          CustomInkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return AccountMainScreen();}));
                },
              child: CustomRow(title: "Account",)),
          CustomInkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return MyWalletScreen();}));
                },
              child: CustomRow(title: "Wallet",)),
          CustomRow(title: "Financial Dashboard",)


        ],
      )
    );
  }
}



class CustomRow extends StatelessWidget {

  final String title;
  CustomRow({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Text(title,style: CustomTextStyle.mediumTextStyle(),)),
              Icon(Icons.navigate_next)
            ],
          ),
        ],
      ),
    );
  }
}
