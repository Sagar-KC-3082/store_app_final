import 'package:flutter/material.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:get/get.dart';
import 'package:store_app/widgets/custom_checkbox.dart';
import 'package:store_app/widgets/full_width_button.dart';

import '../add_user_details/add_certificate.dart';


class ServicesSubCategoryScreen extends StatelessWidget {
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

              CustomAppBarRowWithCustomIcon(title: "Select Category",),
              SizedBox(height: 30,),

              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    CustomRow(image: "assets/images/moving.jpg",title: "Service Name",),
                    CustomRow(image: "assets/images/driving1.jpg",title: "Service Name",),
                    CustomRow(image: "assets/images/moving.jpg",title: "Service Name",),
                    CustomRow(image: "assets/images/driving1.jpg",title: "Service Name",),
                    CustomRow(image: "assets/images/moving.jpg",title: "Service Name",),
                    CustomRow(image: "assets/images/driving1.jpg",title: "Service Name",),
                    CustomRow(image: "assets/images/moving.jpg",title: "Service Name",),

                  ],
                ),
              ),

              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Continue",
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){return AddCertificateScreen();}));
                  },
              )

            ],
          ),

        ),
      ),
    );
  }
}



class CustomRow extends StatelessWidget {
  final String image;
  final String title;
  CustomRow({this.title,this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          CircleAvatar(
            radius: Get.width*0.08,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(width: 15,),
          
          Expanded(child: Text(title,style: CustomTextStyle.smallBoldTextStyle1(),)),
          SizedBox(width: 15,),

          CustomCheckBox()
        ],
      ),
    );
  }
}

