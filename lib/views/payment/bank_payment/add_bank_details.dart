import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/views/payment/payment_success_view.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/custom_text_and_textfield_widget.dart';
import 'package:store_app/widgets/full_width_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AddBankInfoView extends StatelessWidget {

  List _colorList = [Color(0xFF4960AC),Colors.red,Colors.greenAccent];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            child: Container(
              height: Get.height*0.93,
              child: Column(
                children: [
                  CustomAppBarRowWithCustomIcon(title: "Add Bank Account"),
                  SizedBox(height: 30,),

                  CustomTextAndTextFieldWidget(text: "Account Holder Name"),
                  CustomTextAndTextFieldWidget(text: "Bank Name"),
                  CustomTextAndTextFieldWidget(text: "Account Type"),
                  CustomTextAndTextFieldWidget(text: "Bank Code"),
                  CustomTextAndTextFieldWidget(text: "Account Code"),

                  Spacer(),
                  FullWidthButton(
                    color: AppColors.primaryDarkOrange,
                    title: "Continue",
                    onTap: (){Get.to(PaymentSuccessScreen());},
                  )

                ],
              ),
            ),
          )
      ),
    );
  }
}
