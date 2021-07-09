import 'package:flutter/material.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/widgets/add_item_widget.dart';
import 'package:store_app/widgets/custom_inkwell.dart';
import 'package:get/get.dart';


class OrderDetails extends StatelessWidget {

  final List _itemList = [
    {"title1":"Butter Panner","title2":"Fast Food","price":"51.99","imageUrl":"assets/images/foodItem7.png"},
    {"title1":"Palak Panner","title2":"Heavy Food","price":"67.99","imageUrl":"assets/images/foodItem8.png"},
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryDarkBlue,
      body: SafeArea(
        child: Column(
          children: [
            ColorfulAppBar(),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [

                    // SizedBox(height: 20,),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.grey.withOpacity(0.2),blurRadius: 5,spreadRadius: 3,offset: Offset(3,3))
                          ]
                      ),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Order Number",style: CustomTextStyle.mediumTextStyle(),),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text("#45423423",style: CustomTextStyle.smallTextStyle1(),),
                              Spacer(),
                              Text("On Payment",style: CustomTextStyle.smallTextStyle1(),),

                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 2,),
                                  Icon(Icons.circle,size: 15,color: Colors.grey,),
                                  SizedBox(width: 5,),
                                  Text("Sikkim, NorthEast")
                                ],
                              ),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Icon(Icons.location_on_outlined,size: 15,color: Colors.grey,),
                                  SizedBox(width: 5,),
                                  Text("Delhi, SouthEast")
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Text("25 KM",style: CustomTextStyle.mediumTextStyle(),)
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                      child: Text("Items",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),
                    ),
                    SizedBox(height: 10,),

                    AddItemWidget1(imageUrl: _itemList[0]["imageUrl"],title1: _itemList[0]["title1"],title2: _itemList[0]["title2"],price: _itemList[0]["price"],hideExtra: true,),
                    AddItemWidget1(imageUrl: _itemList[1]["imageUrl"],title1: _itemList[1]["title1"],title2: _itemList[1]["title2"],price: _itemList[1]["price"],hideExtra: true,),
                    AddItemWidget1(imageUrl: _itemList[0]["imageUrl"],title1: _itemList[0]["title1"],title2: _itemList[0]["title2"],price: _itemList[0]["price"],hideExtra: true,),
                    AddItemWidget1(imageUrl: _itemList[1]["imageUrl"],title1: _itemList[1]["title1"],title2: _itemList[1]["title2"],price: _itemList[1]["price"],hideExtra: true,),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                      child: Text("Customer",style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),
                    ),

                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(color: Colors.grey.withOpacity(0.2),blurRadius: 5,spreadRadius: 3,offset: Offset(3,3))
                          ]
                      ),
                      margin:EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(child: Text("Sagar KC",style: CustomTextStyle.mediumTextStyle(),)),
                              SizedBox(width: 10,),
                              Icon(Icons.message,size:18,),
                              SizedBox(width: 10,),
                              Icon(Icons.call,size: 20,)
                            ],
                          ),
                          SizedBox(height: 5,),

                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Text("2 New Nehru Nagar Indore 457415, Madhya Pradesh 2 New Nehru Shdradhapath Nagar Indore 457415",style: CustomTextStyle.smallTextStyle1(),),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height:20,),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                      child: Column(
                        children: [
                          CustomRow(title1: "Service Fee",title2: "\$128",),
                          CustomRow(title1: "Late Night Charge",title2: "\$128",),
                          CustomRow(title1: "Moving Cart ",title2: "\$128",title3: "Additional Services",),
                          CustomRow(title1: "Discount",title2: "\$128",title3: "Promo Code: 554dffd",),

                          SizedBox(height: 5,),
                          Divider(),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text("Total",style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),
                              Spacer(),
                              Text("\$124.67",style: CustomTextStyle.ultraBoldTextStyle(),)
                            ],
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}




class ColorfulAppBar extends StatefulWidget {
  final GlobalKey<ScaffoldState> globalKey;
  ColorfulAppBar({this.globalKey});
  @override
  _ColorfulAppBarState createState() => _ColorfulAppBarState();
}

class _ColorfulAppBarState extends State<ColorfulAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: 20),
      child: Row(
        children: [
          CustomInkWell(
              onTap: (){
                Get.back();
              },
              child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
          Spacer(),
          Text("Order Detail",style: CustomTextStyle.appBarTextStyle(fontFamily: "PoppinsRegular",color: Colors.white),),
          Spacer(),
        ],
      ),
    );
  }
}



class CustomRow extends StatelessWidget {

  final String title1;
  final String title2;
  final String title3;
  CustomRow({this.title2,this.title1,this.title3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          title3 == null ? Expanded(child: Text(title1,style: CustomTextStyle.smallBoldTextStyle1(),)) :
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title1,style: CustomTextStyle.smallBoldTextStyle1(),),
                Text(title3,style: CustomTextStyle.smallTextStyle1(color: Colors.grey),)
              ],
            ),
          ),
          Text(title2,style: CustomTextStyle.smallTextStyle1(),)
        ],
      ),
    );
  }
}
