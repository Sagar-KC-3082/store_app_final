import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/views/home/add_user_details/add_location.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/custom_dropdown_widget.dart';
import 'package:store_app/widgets/custom_text_and_textfield_widget.dart';
import 'package:store_app/widgets/full_width_button.dart';


class AddInfoView extends StatelessWidget {
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
                  CustomAppBarRowWithCustomIcon(title: "Add Information",),
                  SizedBox(height: 30,),

                  DottedBorder(
                    borderType: BorderType.RRect,
                    color: Colors.grey,
                    radius: Radius.circular(AppConstants.borderRadius),
                    child: Container(
                      height: Get.height*0.15,
                      width: Get.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add,size: 30,color: Colors.grey,),
                          Text("Store Image",style: CustomTextStyle.smallTextStyle1(),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),

                  CustomTextAndTextFieldWidget(text: "Store Name",),
                  CustomTextAndTextFieldWidget(text: "Store Bio",maxLines: 5,),
                  SizedBox(height: 10,),

                  Text("Store Category",style: CustomTextStyle.smallBoldTextStyle1(),),
                  SizedBox(height: 10,),
                  CustomDropDownWidget(hintText:"Fashion",dropDownItems: ["Fashion","Sports","Pharmacy","Electronic","Hardware","Agricultural Products","Pet Supplies","Gift Gallery"],),


                  Spacer(),
                  FullWidthButton(
                    color: AppColors.primaryDarkOrange,
                    title: "Continue",
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){return AddLocation();}));
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
