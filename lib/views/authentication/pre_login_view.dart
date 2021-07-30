import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/views/authentication/sign_in_view.dart';
import 'package:store_app/views/authentication/sign_up_view.dart';
import 'package:store_app/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PreLoginView extends StatelessWidget {
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
              Image.asset("assets/images/splashImage.png",height: Get.height*0.3,width: Get.width*0.8,),
              Spacer(),

              FullWidthButton(title: "SIGN IN",color: AppColors.primaryDarkBlue,onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return SignInView();}));
                },),

              FullWidthButton(title: "SIGN UP",color: AppColors.primaryDarkOrange,onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpView();}));
                },),

              SizedBox(height: 50,),

            ],
          ),
        ),
      ),
    );
  }
}
