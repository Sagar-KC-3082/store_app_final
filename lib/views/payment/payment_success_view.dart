import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/views/home/home_screen/home_screen.dart';
import 'package:store_app/views/home/home_screen/home_screen_for_services.dart';
import 'package:store_app/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/controllers/home/home_controller.dart';


class PaymentSuccessScreen extends StatelessWidget {

  HomeController _homeController = Get.put(HomeController());

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

              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green
                ),
                padding: EdgeInsets.all(15),
                child: Icon(Icons.check,color: Colors.white,size: Get.width*0.2,),
              ),
              Text("Waiting for admin",style: CustomTextStyle.ultraBoldTextStyle(),),

              Spacer(),
              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Back To Login",
                onTap: (){
                  _homeController.userType.value == "Services" ? Get.to(HomeScreenForServices()) : Get.to(HomeScreenView());
                  },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
