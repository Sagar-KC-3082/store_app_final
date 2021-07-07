import 'package:flutter/material.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/views/payment/payment_method_view.dart';
import 'package:store_app/widgets/add_item_widget.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/full_width_button.dart';
import 'package:get/get.dart';


class MyServicesView extends StatelessWidget {

  final List _itemList = [
    {"title1":"Butter Panner","title2":"Fast Food","price":"51.99","imageUrl":"assets/images/foodItem7.png"},
    {"title1":"Palak Panner","title2":"Heavy Food","price":"67.99","imageUrl":"assets/images/foodItem8.png"},
  ];

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
              CustomAppBarRowWithCustomIcon(title: "My Services",),
              SizedBox(height: 30,),

              Expanded(
                child:  ListView.builder(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _itemList.length,
                  itemBuilder: (context,index){
                    return AddItemWidget(imageUrl: _itemList[index]["imageUrl"],title1: _itemList[index]["title1"],title2: _itemList[index]["title2"],price: _itemList[index]["price"],);
                  },
                ),
              ),

              Spacer(),
              FullWidthButton(
                color: AppColors.primaryDarkBlue,
                title: "Add New Item",
                onTap: (){
                  Get.back();
                },
              ),

              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Continue",
                onTap: (){
                  Get.to(PaymentMethod());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
