import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/views/authentication/forgot_password_view.dart';
import 'package:store_app/views/authentication/otp_view.dart';
import 'package:store_app/views/authentication/sign_up_view.dart';
import 'package:store_app/widgets/custom_inkwell.dart';
import 'package:store_app/widgets/full_width_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SignInView extends StatelessWidget {

  final _formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey1,
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: Get.height*0.93,
              padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Expanded(child: Center(child: Image.asset("assets/images/splashImage.png",width: Get.width*0.5,fit: BoxFit.cover,))),

                  Text("Welcome back to Login",style: CustomTextStyle.boldTextStyle(),),
                  SizedBox(height: 30,),

                  Text("Email / Mobile number",style: CustomTextStyle.mediumTextStyle(),),
                  SizedBox(height: 10,),
                  CustomTextField(
                    validator: (value){
                      if(value==""){return "Email cannot be empty";}
                      else if (value.length < 8){return "Please provide a valid email";}
                      else{return null;}
                  },),
                  SizedBox(height: 30,),

                  Text("Password",style: CustomTextStyle.mediumTextStyle(),),
                  SizedBox(height: 10,),
                  CustomTextField(
                    obSecureText: true,
                    validator: (value){
                      if(value==""){return "Password cannot be empty";}
                      else if (value.length < 8){return "Please provide a valid password";}
                      else{return null;}
                  },),
                  SizedBox(height: Get.height*0.05,),

                  FullWidthButton(color: AppColors.primaryDarkBlue,title: "SIGN IN",onTap: (){
                    FocusScope.of(context).unfocus();
                    if(_formKey1.currentState.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context){return OtpScreen();}));
                    }
                  },),
                  SizedBox(height: 20,),

                  Center(child: CustomInkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){return ForgotPasswordView();}));
                        },
                      child: Text("FORGOT PASSWORD",style: CustomTextStyle.boldMediumTextStyle(),))),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: CustomTextStyle.mediumTextStyle()),
                      CustomInkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpView();}));
                            },
                          child: Text(" Sign Up",style: CustomTextStyle.boldMediumTextStyle())),

                    ],
                  ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
