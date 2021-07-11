import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/views/home/add_user_details/add_photo.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/full_width_button.dart';



class AddCertificateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBarRowWithCustomIcon(title: "Upload Certificate",),
                  SizedBox(height: 30,),

                  DottedBorder(
                    borderType: BorderType.RRect,
                    color: Colors.grey,
                    radius: Radius.circular(AppConstants.borderRadius),
                    child: Container(
                      height: Get.height*0.25,
                      width: Get.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/docs.png"),
                          SizedBox(height: 10,),
                          Text("Upload Certificate",style: CustomTextStyle.smallBoldTextStyle1(),),
                        ],
                      ),
                    ),
                  ),

                  Spacer(),
                  FullWidthButton(
                    color: AppColors.primaryDarkOrange,
                    title: "Continue",
                    onTap: (){
                      Get.to(AddPhotoView(comingFromServices: true,));
                    },
                  )

                ],
              ),
            ),
          ),
        )
    );
  }
}
