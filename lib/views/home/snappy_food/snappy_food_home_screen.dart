import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/views/home/add_user_details/add_info.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/widgets/full_width_button.dart';


class SnappyFoodHomeScreen extends StatelessWidget {

  roundedImage(String imageUrl){
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(imageUrl,fit: BoxFit.cover,width: Get.width*0.8,),
      ),
    );
  }

  imageWithText(String imageUrl,String title){
    return Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(imageUrl,height:70,width: Get.width*0.25,fit: BoxFit.fill,)),
        SizedBox(width: 15,),
        Text(title,style: CustomTextStyle.smallBoldTextStyle1(color: Colors.black),)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              CustomAppBarCenterText(title: "Snappy Food",),
              SizedBox(height: 30,),

              Text("Sub Category",style: CustomTextStyle.smallBoldTextStyle1(),),
              SizedBox(height: 30),

              CustomInkWell(
                // onTap: (){Get.to(FoodAndBeveragesView());},
                child: imageWithText("assets/images/food_beverage.jpg","Food & Beverage"),
              ),
              SizedBox(height: 30,),
              CustomInkWell(
                // onTap: (){Get.to(FarmersMarketView());},
                child:imageWithText("assets/images/farmer_market.jpg","Farmer's Market"),
              ),

              Spacer(),
              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Continue",
                onTap: (){
                  Get.to(AddInfoView());
                },
              )
            ],
          ),
        ),
      ),
    );



  }
}
