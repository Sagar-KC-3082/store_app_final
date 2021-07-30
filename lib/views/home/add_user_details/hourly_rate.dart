import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/views/home/add_user_details/add_item.dart';
import 'package:store_app/views/payment/payment_method_view.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/custom_text_and_textfield_widget.dart';
import 'package:store_app/widgets/custom_text_field.dart';
import 'package:store_app/widgets/full_width_button.dart';


class ServicesHourlyRate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarRowWithCustomIcon(title: "Set Hourly Rate",),
              SizedBox(height:40,),

              CustomTextAndTextFieldWidget(text: "Just once",),
              CustomTextAndTextFieldWidget(text: "Weekly",),
              CustomTextAndTextFieldWidget(text: "Every 2 weeks",),
              CustomTextAndTextFieldWidget(text: "Every 4 weeks",),



              Spacer(),
              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Continue",
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return PaymentMethod();}));
                  },
              )
            ],
          ),
        ),
      ),
    );
  }
}
