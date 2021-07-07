import 'package:get/get.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/views/home/add_user_details/add_info.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/custom_inkwell.dart';
import 'package:store_app/widgets/custom_slliver_grid.dart';
import 'package:flutter/material.dart';
import 'package:store_app/widgets/full_width_button.dart';


class SnappyStoreHomeScreen extends StatelessWidget {

  final List _snappyStoreCategoryList = [{"name":"Fashion","imageUrl":"assets/images/cloth.png"},{"name":"Sports","imageUrl":"assets/images/cloth.png"},{"name":"Pharmacy","imageUrl":"assets/images/cloth.png"},{"name":"Electronic & PC Hub","imageUrl":"assets/images/cloth.png"},{"name":"Hardware","imageUrl":"assets/images/cloth.png"},{"name":"Agricultural Products","imageUrl":"assets/images/cloth.png"},{"name":"Pet Supplies","imageUrl":"assets/images/cloth.png"},{"name":"Gift Gallery","imageUrl":"assets/images/cloth.png"},];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarRowWithCustomIcon(title:"Snappy Store",),
              SizedBox(height: 30,),

             Expanded(
                child: GridView.builder(
                    itemCount: _snappyStoreCategoryList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                      crossAxisCount: 3,height:150,crossAxisSpacing: 15
                    ),
                    itemBuilder: (context,index){
                      return Center(child: CustomTextIconColumn(
                        imageUrl: _snappyStoreCategoryList[index]["imageUrl"],title: _snappyStoreCategoryList[index]["name"],));
                    }),
              ),

              FullWidthButton(
                color: AppColors.primaryDarkOrange,
                title: "Continue",
                onTap: (){
                  Get.to(AddInfoView());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}


class CustomTextIconColumn extends StatefulWidget {

  final String imageUrl;
  final String title;
  // final List<StoreDetailModel> storeList ;
  CustomTextIconColumn({this.imageUrl,this.title});

  @override
  _CustomTextIconColumnState createState() => _CustomTextIconColumnState();
}

class _CustomTextIconColumnState extends State<CustomTextIconColumn> {

  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: ()async{
        setState(() {
          isTapped = !isTapped;
        });
      },
      child: Column(
        children: [
              Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: isTapped ? Colors.blue : Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFFEBF0FF))
                  ),
                  child: Image.asset(widget.imageUrl,fit: BoxFit.cover,)),
              SizedBox(height: 10,),
              Text(widget.title,style: CustomTextStyle.smallBoldTextStyle1(color: Colors.grey),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}

