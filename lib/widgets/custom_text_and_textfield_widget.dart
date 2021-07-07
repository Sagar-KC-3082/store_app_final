import 'package:flutter/material.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class CustomTextAndTextFieldWidget extends StatelessWidget {

  final String text;
  final int maxLines;
  CustomTextAndTextFieldWidget({this.text,this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("  $text",style: CustomTextStyle.smallBoldTextStyle1(),),
          SizedBox(height: 10,),
          CustomTextField(borderRadius: BorderRadius.circular(AppConstants.borderRadius,),maxLines: maxLines?? 1,),
        ],
      ),
    );
  }
}
