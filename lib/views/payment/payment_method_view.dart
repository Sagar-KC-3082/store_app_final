import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bank_payment/add_bank_details.dart';
import 'credit_card_payment/credit_card_info_view.dart';


class PaymentMethod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarRowWithCustomIcon(title: "Add Payment Method",),
              SizedBox(height: 30,),

              PaymentWidget(imageUrl: "assets/images/credit_card.png",title: "Credit Card or Debit",),
              SizedBox(height: 10,),
              PaymentWidget(imageUrl: "assets/images/paypal.png",title: "Bank Transfer",),


            ],
          ),
        ),
      ),
    );
  }
}


class PaymentWidget extends StatefulWidget {

  final String title;
  final String imageUrl;
  PaymentWidget({this.title, this.imageUrl});

  @override
  _PaymentWidgetState createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {

  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: ()async{
        setState(() {
          _isTapped = !_isTapped;
        });
        await Future.delayed(Duration(milliseconds: 200),(){
          if(widget.title=="Bank Transfer"){
            Navigator.push(context, MaterialPageRoute(builder: (context){return AddBankInfoView();}));
          }
          else{
            Navigator.push(context, MaterialPageRoute(builder: (context){return CreditCardInfoScreen();}));
          }
          setState(() {
            _isTapped = !_isTapped;
          });

        });
      },
      child: Container(
        color: _isTapped == true ? Color(0xFFEBF0FF): Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 10 ),
        child: Row(
          children: [
            Image.asset(widget.imageUrl),
            SizedBox(width: 15,),
            Text(widget.title,style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),)

          ],
        ),
      ),
    );
  }
}

