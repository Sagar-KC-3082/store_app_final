import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/views/home/add_user_details/add_item.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/full_width_button.dart';
import 'add_bio.dart';


class AddPhotoView extends StatelessWidget {
  final bool comingFromServices;
  AddPhotoView({this.comingFromServices});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarRowWithCustomIcon(title: "Upload Profile Pic",),
              SizedBox(height: 40,),

             Stack(
               children: [
                 Container(
                   height: Get.height*0.35,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(vertical: 20),
                     child: CircleAvatar(
                       radius: Get.width*0.4,
                       backgroundImage: AssetImage("assets/images/user4.jpg"),
                     ),
                   ),
                 ),
                 Positioned(
                   bottom:5,
                   left: Get.width*0.37,
                   child:Container(
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.black
                     ),
                     padding: EdgeInsets.all(10),
                     child:  Icon(Icons.camera_alt,color: Colors.white,),
                   )
                 )
               ],
             ),

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text("Please upload a passport-style photo without sunglasses",style: CustomTextStyle.smallBoldTextStyle1(),textAlign: TextAlign.center,),
              ),

              Spacer(),
              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Continue",
                onTap: (){
                 comingFromServices == true?
                 Navigator.push(context, MaterialPageRoute(builder: (context){return ServicesAddBio();})):
                 Navigator.push(context, MaterialPageRoute(builder: (context){return AddItemView();}));
                 },
              )
            ],
          ),
        ),
      ),
    );
  }
}
