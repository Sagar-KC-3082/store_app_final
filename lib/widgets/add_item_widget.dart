import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/views/home/home_screen/booking_detail.dart';
import 'package:store_app/views/home/home_screen/order_details.dart';
import 'package:store_app/widgets/custom_inkwell.dart';

class AddItemWidget extends StatefulWidget {

  final String imageUrl;
  final String title1;
  final String title2;
  final String price;

  AddItemWidget({this.title1,this.price,this.imageUrl,this.title2});


  @override
  _AddItemWidgetState createState() => _AddItemWidgetState();
}

class _AddItemWidgetState extends State<AddItemWidget> {
  bool pressed = false;
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 5),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 10
            )
          ],
          borderRadius: BorderRadius.circular(10)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Row(
          children: [
            Image.asset(widget.imageUrl,height: Get.height*0.15,width: Get.width*0.25,fit: BoxFit.cover,),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title1,style: CustomTextStyle.mediumTextStyle()),
                Text(widget.title2,style:  CustomTextStyle.ultraSmallTextStyle(color: Colors.grey)),
                SizedBox(height: 5,),
                Text("\$ ${widget.price}",style: CustomTextStyle.smallBoldTextStyle1()),
              ],
            ),
            Spacer(),

            pressed==false ?
            InkWell(
              onTap: (){
                setState(() {
                  pressed = true;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal:25,vertical: 8),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text("Edit",style:  CustomTextStyle.ultraSmallBoldTextStyle(color: Colors.white),),
              ),
            ):

            Container(
              child: Row(

                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        if (count >1 ){
                          count--;
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                      child: Center(child: Text(" - ",style:  CustomTextStyle.ultraSmallTextStyle(color: Colors.white))),
                    ),
                  ),

                  Text(count.toString(),style:  CustomTextStyle.boldMediumTextStyle(color: Colors.black)),

                  InkWell(
                    onTap: (){
                      setState(() {
                        count++;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                      child: Center(child: Text(" + ",style:  CustomTextStyle.ultraSmallTextStyle(color: Colors.white),)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class AddItemWidget1 extends StatefulWidget {

  final String imageUrl;
  final String title1;
  final String title2;
  final String price;
  final bool hideExtra;
  final bool comingFromServices;

  AddItemWidget1({this.title1,this.price,this.imageUrl,this.title2,this.hideExtra,this.comingFromServices});


  @override
  _AddItemWidget1State createState() => _AddItemWidget1State();
}

class _AddItemWidget1State extends State<AddItemWidget1> {
  bool pressed = false;
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){
        widget.comingFromServices == true ?
        Navigator.push(context, MaterialPageRoute(builder: (context){return BookingDetail();})):
        Navigator.push(context, MaterialPageRoute(builder: (context){return OrderDetails();}));
        },
      child: Container(
        padding: EdgeInsets.only(right: 5),
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 3,
                  blurRadius: 10
              )
            ],
            borderRadius: BorderRadius.circular(10)
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Row(
            children: [
              Image.asset(widget.imageUrl,height: Get.height*0.15,width: Get.width*0.25,fit: BoxFit.cover,),
              SizedBox(width: 10,),
              Expanded(
                child: Row(
                  crossAxisAlignment: widget.hideExtra == true? CrossAxisAlignment.center : CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.title1,style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular")),
                        Text(widget.title2,style:  CustomTextStyle.ultraSmallTextStyle(color: Colors.grey)),


                      ],
                    ),
                    Spacer(),


                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("\$ ${widget.price}",style: CustomTextStyle.smallBoldTextStyle1()),
                        SizedBox(height: 8,),
                        widget.hideExtra == true ? Container() : Text("2+ more",style: CustomTextStyle.mediumTextStyle()),
                      ],
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


class NonTappableAddItemWidget1 extends StatefulWidget {

  final String imageUrl;
  final String title1;
  final String title2;
  final String price;
  final bool hideExtra;
  final bool comingFromServices;

  NonTappableAddItemWidget1({this.title1,this.price,this.imageUrl,this.title2,this.hideExtra,this.comingFromServices});


  @override
  _NonTappableAddItemWidget1State createState() => _NonTappableAddItemWidget1State();
}

class _NonTappableAddItemWidget1State extends State<NonTappableAddItemWidget1> {
  bool pressed = false;
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: (){
        // widget.comingFromServices == true ?
        // Navigator.push(context, MaterialPageRoute(builder: (context){return BookingDetail();})):
        // Navigator.push(context, MaterialPageRoute(builder: (context){return OrderDetails();}));
      },
      child: Container(
        padding: EdgeInsets.only(right: 5),
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        decoration: BoxDecoration(
            color: AppColors.backgroundColor,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 3,
                  blurRadius: 10
              )
            ],
            borderRadius: BorderRadius.circular(10)
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Row(
            children: [
              Image.asset(widget.imageUrl,height: Get.height*0.15,width: Get.width*0.25,fit: BoxFit.cover,),
              SizedBox(width: 10,),
              Expanded(
                child: Row(
                  crossAxisAlignment: widget.hideExtra == true? CrossAxisAlignment.center : CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.title1,style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular")),
                        Text(widget.title2,style:  CustomTextStyle.ultraSmallTextStyle(color: Colors.grey)),


                      ],
                    ),
                    Spacer(),


                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("\$ ${widget.price}",style: CustomTextStyle.smallBoldTextStyle1()),
                        SizedBox(height: 8,),
                        widget.hideExtra == true ? Container() : Text("2+ more",style: CustomTextStyle.mediumTextStyle()),
                      ],
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