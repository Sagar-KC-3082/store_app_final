import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/controllers/authentication/otp_controller.dart';
import 'package:store_app/views/home/user_type_selection.dart';
import 'package:store_app/widgets/full_width_button.dart';
import 'package:store_app/widgets/otp_text_field.dart';


class OtpScreen extends StatelessWidget {

  final OtpController _otpController = Get.put(OtpController());
  final GlobalKey<FormState> _globalKey1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _globalKey1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
              child: Column(
                children: [
                  SizedBox(height: Get.height*0.2,),
                  Center(child: Image.asset("assets/images/splashImage.png",fit: BoxFit.cover,)),
                  SizedBox(height: 20,),

                  Text("OTP has been sent your email",style: CustomTextStyle.boldMediumTextStyle(),),
                  SizedBox(height: 5,),
                  Text("Please enter your OTP code",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                  SizedBox(height: 30,),

                  Obx((){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [

                          Expanded(child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: OtpTextField(controller: _otpController.otpController1.value,count: 1,)),
                          ),
                          Expanded(child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: OtpTextField(controller: _otpController.otpController2.value,count: 2,)),
                          ),
                          Expanded(child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: OtpTextField(controller: _otpController.otpController3.value,count: 3,)),
                          ),
                          Expanded(child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: OtpTextField(controller: _otpController.otpController4.value,count: 4,)),
                          ),
                        ],
                      ),
                    );
                  }),

                  SizedBox(height: 30,),
                  FullWidthButton(
                    color: AppColors.primaryDarkOrange,
                    title: "Verify",
                    onTap: (){
                        if(_globalKey1.currentState.validate()){
                          Get.to(UserTypeSelectionView());
                        }
                    },
                  )

                ],
              )
            ),
          ),
        ),
      ),
    );
  }
}
