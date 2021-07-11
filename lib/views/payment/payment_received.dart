import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/controllers/home/home_controller.dart';
import 'package:store_app/views/home/home_screen/home_screen.dart';
import 'package:store_app/views/home/home_screen/home_screen_for_services.dart';
import 'package:store_app/widgets/custom_inkwell.dart';
import 'package:store_app/widgets/custom_text_field.dart';
import 'package:store_app/widgets/full_width_button.dart';

class PaymentReceivedScreen extends StatelessWidget {

  HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                    child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: Get.height*0.05,),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green
                ),
                padding: EdgeInsets.all(15),
                child: Icon(Icons.check,color: Colors.white,size: Get.width*0.2,),
              ),
              SizedBox(height: 30,),

              Text("Payment Received",style: CustomTextStyle.appBarTextStyle(fontFamily: "PoppinsBold"),),
              SizedBox(height: 5,),
              Text("You got",style: CustomTextStyle.mediumTextStyle(),),
              SizedBox(height: 5,),
              Text("\$ 150.00",style: CustomTextStyle.ultraBoldTextStyle(),),
              SizedBox(height: 20,),

              Text("Rate the customer",style: CustomTextStyle.mediumTextStyle(),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,color: Colors.yellow,size: 30,),Icon(Icons.star,color: Colors.yellow,size: 30,),Icon(Icons.star,color: Colors.yellow,size: 30,),Icon(Icons.star,color: Colors.yellow,size: 30,),Icon(Icons.star,color: Colors.grey.withOpacity(0.4),size: 30,),
                ],
              ),
              SizedBox(height: 30,),

              CustomTextField(
                maxLines: 5,
                borderRadius: BorderRadius.circular(12),
                hintText: "Leave comment here",
              ),

              Spacer(),

              CustomInkWell(
                onTap: (){
                  if(_homeController.userType.value == "Services"){
                    Get.offAll(HomeScreenForServices());
                  }
                  else{
                    Get.offAll(HomeScreenView());
                  }
                },
                child: FullWidthButton(
                  color: AppColors.primaryDarkOrange,
                  title: "Submit",
                ),
              ),
              CustomInkWell(
                  onTap: (){
                    if(_homeController.userType.value == "Services"){
                      Get.offAll(HomeScreenForServices());
                    }
                    else{
                      Get.offAll(HomeScreenView());
                    }
                  },
                  child: Text("Skip Rating",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),))
            ],
          ),
        ),
      ),
    );
  }
}
