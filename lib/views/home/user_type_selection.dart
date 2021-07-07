import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/views/home/snappy_food/snappy_food_home_screen.dart';
import 'package:store_app/views/home/snappy_services/home_screen_view.dart';
import 'package:store_app/views/home/snappy_store/snappy_store_home_screen.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/custom_inkwell.dart';
import 'package:store_app/widgets/full_width_button.dart';


class UserTypeSelectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body:SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarCenterText(title: "User Type",),
              // SizedBox(height: 30,),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        flex: 1,
                        child: SizedBox()),
                    Expanded(
                      flex: 2,
                      child: CustomInkWell(
                        onTap: (){
                          Get.to(SnappyFoodHomeScreen());
                        },
                        child: Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                  borderRadius:BorderRadius.circular(12),
                                  child: Image.asset("assets/images/food.jpg",width: Get.width*0.45,fit: BoxFit.cover,)),
                            ),
                            SizedBox(height: 10,),
                            Text("Snappy Food",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height*0.05,),
                    Expanded(
                      flex: 2,
                      child: CustomInkWell(
                        onTap: (){
                          Get.to(SnappyStoreHomeScreen());
                        },
                        child: Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                  borderRadius:BorderRadius.circular(12),
                                  child: Image.asset("assets/images/fashion.jpg",width: Get.width*0.45,fit: BoxFit.cover,)),
                            ),
                            SizedBox(height: 10,),
                            Text("Snappy Store",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: Get.height*0.05,),
                    Expanded(
                      flex: 2,
                      child: CustomInkWell(
                        onTap: (){
                          Get.to(SnappyServicesHomeScreen());
                        },
                        child: Column(
                          children: [
                            Expanded(
                              child: ClipRRect(
                                  borderRadius:BorderRadius.circular(12),
                                  child: Image.asset("assets/images/services.jpeg",width: Get.width*0.45,fit: BoxFit.cover,)),
                            ),
                            SizedBox(height: 10,),
                            Text("Snappy Services",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: SizedBox()),
                  ],
                ),
              ),


              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Continue",
                onTap: (){
                  // Get.to(SnappyServicesHomeScreen());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
