import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/views/home/add_user_details/my_services.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/custom_text_and_textfield_widget.dart';
import 'package:store_app/widgets/full_width_button.dart';


class AddItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBarRowWithCustomIcon(title: "Add Items",),
              SizedBox(height: 30,),

              DottedBorder(
                borderType: BorderType.RRect,
                color: Colors.grey,
                radius: Radius.circular(AppConstants.borderRadius),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 25),
                  child: Column(
                    children: [
                      Icon(Icons.add,color: Colors.grey,size: 30,),
                      SizedBox(height: 5,),
                      Text("Add Photo",style: CustomTextStyle.smallBoldTextStyle1(),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),

              CustomTextAndTextFieldWidget(text: "Name",),
              CustomTextAndTextFieldWidget(text: "Category",),
              CustomTextAndTextFieldWidget(text: "Price",),

              Spacer(),
              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Continue",
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return MyServicesView();}));
                  },
              )
            ],
          ),
        ),
      ),
    );
  }
}
