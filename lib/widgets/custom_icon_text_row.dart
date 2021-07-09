import 'package:flutter/material.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';

class CustomIconTextRow extends StatelessWidget {

  final Icon icon;
  final String text;
  CustomIconTextRow({this.text,this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12,horizontal: 0),
      child: Row(
        children: [
            icon,
            SizedBox(width: 15,),
            Text(text,style: CustomTextStyle.smallBoldTextStyle1(),)
        ],
      ),

    );
  }
}
