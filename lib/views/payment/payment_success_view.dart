import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PaymentSuccessScreen extends StatelessWidget {

  final bool comingFromParcelScreen;
  PaymentSuccessScreen({this.comingFromParcelScreen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Spacer(),

              Image.asset("assets/images/success.png",height: Get.height*0.15,width: Get.width*0.3,fit: BoxFit.cover,),
              Text("Waiting for admin",style: CustomTextStyle.ultraBoldTextStyle(),),

              Spacer(),
              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Back To Login",
                onTap: (){
                  // Get.off(OrderHomeScreen());
                  },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
