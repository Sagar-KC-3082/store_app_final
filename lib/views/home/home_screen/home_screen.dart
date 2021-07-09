import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/views/home/home_screen/current_order.dart';
import 'package:store_app/widgets/custom_drawer.dart';
import 'package:store_app/widgets/custom_inkwell.dart';


class HomeScreenView extends StatelessWidget {

  final GlobalKey<ScaffoldState> _globalKey1 = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey1,
      drawer: CustomDrawer(),
      backgroundColor: AppColors.primaryDarkBlue,
      body: SafeArea(
        child: Column(
          children: [
            ColorfulAppBar(globalKey: _globalKey1,),

            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 5,),
                        Expanded(child: OrderContainer(title: "Total Order",amount: "250",)),
                        Expanded(child: OrderContainer(title: "Total Earn",amount: "180\$",)),
                        Expanded(child: OrderContainer(title: "Total Review",amount: "104",)),
                      ],
                    ),
                    SizedBox(height: 20,),

                    Text(" My Order",style: CustomTextStyle.appBarTextStyle(fontFamily: "PoppinsBold"),),
                    SizedBox(height: 10,),

                    CustomRow(title: "Current Order",number: "5",isCurrentOrder: true),
                    CustomRow(title: "Active Order",number: "23",),
                    CustomRow(title: "Ready for Parcel",number: "15",),
                    CustomRow(title: "Parceled",number: "76",),
                    CustomRow(title: "Completed",number: "12",),
                    CustomRow(title: "Cancelled",number: "3",),
                  ],
                ),
              ),
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
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
      child: Row(
        children: [
          CustomInkWell(
              onTap: (){
                widget.globalKey.currentState.openDrawer();
              },
              child: Icon(Icons.menu,color: Colors.white,)),
          Spacer(),
          Switch(
              value: _switchValue,
              onChanged: (value){
                setState(() {
                  _switchValue = value;
                });
              },
              activeColor: Colors.white,

              ),
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset("assets/images/user4.jpg",height: 35,width: 35,fit: BoxFit.cover,),
          )
        ],
      ),
    );
  }
}


class OrderContainer extends StatelessWidget {

  final String title;
  final String amount;
  OrderContainer({this.title,this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.2),blurRadius: 5,spreadRadius: 3,offset: Offset(3,3))
        ]
      ),
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 25),
      margin: EdgeInsets.only(right: 10,top: 10,bottom: 10),
      child: Column(
        children: [
          Text(amount,style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),
          SizedBox(height: 5,),
          Text(title,style: CustomTextStyle.smallTextStyle1(),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}


class CustomRow extends StatelessWidget {

  final String title;
  final String number;
  final bool isCurrentOrder;
  CustomRow({this.title,this.number,this.isCurrentOrder});

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){Get.to(CurrentOrderView(title: title,isCurrentOrder:isCurrentOrder));},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.2),blurRadius: 5,spreadRadius: 3,offset: Offset(3,3))
            ]
        ),
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 20),
        margin: EdgeInsets.only(right: 10,top: 10,bottom: 10,left: 5),
        child: Row(
          children: [
              Expanded(child: Text(title,style: CustomTextStyle.smallBoldTextStyle1(),)),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  shape: BoxShape.circle
                ),
                child: Text(number,style: CustomTextStyle.smallBoldTextStyle1(),),
              )
          ],
        ),
      ),
    );
  }
}



