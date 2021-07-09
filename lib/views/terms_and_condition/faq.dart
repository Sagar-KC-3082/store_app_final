import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/widgets/custom_appbar.dart';


class FAQScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarRowWithCustomIconWithNoSpacing(title: "FAQ",),
              SizedBox(height: 30,),

              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [

                    Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                          BoxShadow(color: Colors.grey.withOpacity(0.1),blurRadius: 5,spreadRadius: 3,offset: Offset(3,3))
                        ]
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      child:Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search",
                                hintStyle: CustomTextStyle.smallTextStyle1(color: Colors.grey)
                              ),
                            ),
                          ),
                          Icon(Icons.search)
                        ],

                      )
                    ),
                    SizedBox(height: 30,),

                    Text("Select an issue",style: CustomTextStyle.smallBoldTextStyle1(),),
                    SizedBox(height: 10,),

                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(color: Colors.grey.withOpacity(0.1),blurRadius: 5,spreadRadius: 3,offset: Offset(3,3))
                          ]
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                      child: ListView(
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        children: [
                          CustomRow(title: "Lorem ipsum dolor sit amet, consectetur aing elit. Duis scelerisque sit amet",),
                          CustomRow(title: "Lorem ipsum dolor sit amet, consectetur aing elit. Duis scelerisque sit amet",),
                          CustomRow(title: "Lorem ipsum dolor sit amet, consectetur aing elit. Duis scelerisque sit amet",),
                          CustomRow(title: "Lorem ipsum dolor sit amet, consectetur aing elit. Duis scelerisque sit amet",),
                          CustomRow(title: "Lorem ipsum dolor sit amet, consectetur aing elit. Duis scelerisque sit amet",),
                          CustomRow(title: "Lorem ipsum dolor sit amet, consectetur aing elit. Duis scelerisque sit amet",),

                        ],
                      ),
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



class CustomRow extends StatelessWidget {
  final String title;
  CustomRow({this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Text(title,style: CustomTextStyle.smallTextStyle1(),)),
              SizedBox(width: 15,),
              Icon(Icons.navigate_next)
            ],
          ),
          SizedBox(height: 10,),
          Divider(color: Colors.black,)
        ],
      )
    );
  }
}
