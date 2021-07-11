import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/views/home/snappy_services/sub_category.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:store_app/widgets/full_width_button.dart';


class SnappyServicesHomeScreen extends StatelessWidget {

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

                CustomAppBarRowWithCustomIcon(title: "Select Category",),
                Spacer(),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: CustomCircularWidget(title: "Moving",image: "assets/images/moving.jpg",)),
                    Expanded(
                      child: Padding(
                          padding: EdgeInsets.symmetric(vertical: Get.height*0.07),
                          child: CustomCircularWidget(title: "Cleaning",image: "assets/images/cleaning.jpeg",)),
                    ),
                    Expanded(child: CustomCircularWidget(title: "Driving",image: "assets/images/driving1.jpg",)),

                  ],
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: CustomCircularWidget(title: "Washing",image: "assets/images/washing.jpg",)),
                    Expanded(
                      child: Padding(
                          padding: EdgeInsets.symmetric(vertical: Get.height*0.05),
                          child: CustomCircularWidget(title: "Repairing",image: "assets/images/repairing.jpeg",)),
                    ),
                    Expanded(child: CustomCircularWidget(title: "Baby Sitting",image: "assets/images/babySitting.jpg",)),

                  ],
                ),

                Spacer(),
                FullWidthButton(
                  color: AppColors.primaryDarkOrange,
                  title: "Continue",
                  onTap: (){
                    Get.to(ServicesSubCategoryScreen());
                  },
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}



class CustomCircularWidget extends StatefulWidget {

  final String image;
  final String title;
  CustomCircularWidget({this.title,this.image});

  @override
  _CustomCircularWidgetState createState() => _CustomCircularWidgetState();
}

class _CustomCircularWidgetState extends State<CustomCircularWidget> {

  bool _isTapped=false;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){
        setState(() {
          _isTapped = ! _isTapped;
        });
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: _isTapped? AppColors.primaryDarkOrange : Colors.transparent,
              shape: BoxShape.circle
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(widget.image),
              radius: Get.width*0.11,
            ),
          ),
          SizedBox(height: 10,),
          Text(widget.title,style:CustomTextStyle.smallBoldTextStyle1(),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
