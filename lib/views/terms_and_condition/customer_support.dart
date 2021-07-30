import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/custom_text_and_textfield_widget.dart';
import 'package:store_app/widgets/full_width_button.dart';

class CustomerSupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarRowWithCustomIconWithNoSpacing(title: "Customer Support",),
              SizedBox(height: 30,),

              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    CustomTextAndTextFieldWidget(text: "Name",hintText: "Marina Parker",),
                    CustomTextAndTextFieldWidget(text: "Email",hintText: "example@example.com",),
                    CustomTextAndTextFieldWidget(text: "Subject",hintText: "select subject",),
                    CustomTextAndTextFieldWidget(text: "Message",maxLines: 5,hintText: "write here",)
                  ],
                ),
              ),

              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Save",
                onTap: (){
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
