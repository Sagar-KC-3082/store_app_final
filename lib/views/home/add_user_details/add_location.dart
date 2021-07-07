import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/views/home/add_user_details/add_docs.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/custom_text_and_textfield_widget.dart';
import 'package:store_app/widgets/full_width_button.dart';


class AddLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            child: SingleChildScrollView(
              child: Container(
                height: Get.height*0.93,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBarRowWithCustomIcon(title: "Add Location",),
                    SizedBox(height: 30,),

                    CustomTextAndTextFieldWidget(text: "Address",),
                    CustomTextAndTextFieldWidget(text: "City"),
                    CustomTextAndTextFieldWidget(text: "Shop Number",),
                    CustomTextAndTextFieldWidget(text: "Nearby"),
                    SizedBox(height: 10,),


                    Spacer(),
                    FullWidthButton(
                      color: AppColors.primaryDarkOrange,
                      title: "Continue",
                      onTap: (){
                        Get.to(AddDocumentView());
                      },
                    )

                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
