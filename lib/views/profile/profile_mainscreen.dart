import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/controllers/profile/profile_controller.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'edit_profile.dart';


class ProfileScreen extends StatelessWidget {

  final ProfileController _profileController = Get.put(ProfileController());

  Widget userInfo(BuildContext context){
    return Row(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(
                "assets/images/user4.jpg"
            ),
          ),
          SizedBox(width: 20,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(_profileController.userFirstName.value+ " " +_profileController.userLastName.value,style: CustomTextStyle.boldMediumTextStyle(fontFamily: "PoppinsRegular"),),
                SizedBox(height: 5,),
                Text(_profileController.email.value,style: CustomTextStyle.smallTextStyle1(),),

              ],
            ),
          ),
          SizedBox(width: 20,),
          CustomInkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){return EditProfile(title: "Name",fieldInfo: ["First Name","Last Name"],);}));
                },
              child: Text("Edit",style: CustomTextStyle.boldMediumTextStyle(color: AppColors.primaryDarkOrange,fontFamily: "PoppinsRegular"),))
        ],
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
            child: Obx((){
              return Column(
                children: [
                  CustomAppBarRowWithCustomIconWithNoSpacing(title: "Profile",hideBackButton: true,),
                  SizedBox(height:30,),

                  userInfo(context),
                  SizedBox(height:30,),

                  CustomImageTextRowWidget(title: "Gender",title1:_profileController.gender.value,imageUrl: "assets/images/gender.png",fieldInfo: ["Choose Gender"],),
                  CustomImageTextRowWidget(title: "Email",title1:_profileController.email.value,imageUrl: "assets/images/email.png",fieldInfo: ["Change Email"],),
                  CustomImageTextRowWidget(title: "Phone Number",title1:_profileController.phoneNumber.value,imageUrl: "assets/images/phone.png",fieldInfo: ["Change Number"],),
                  CustomImageTextRowWidget(title: "Change Password",title1:_profileController.gender.value,imageUrl: "assets/images/password.png",fieldInfo: ["Current Password","New Password","New Password Again"],)


                ],
              );
            })
        ),
      ),
    );
  }
}



class CustomImageTextRowWidget extends StatefulWidget {

  final String title;
  final String title1;
  final String imageUrl;
  final List fieldInfo;
  CustomImageTextRowWidget({this.title, this.imageUrl,this.title1,this.fieldInfo});

  @override
  _CustomImageTextRowWidgetState createState() => _CustomImageTextRowWidgetState();
}

class _CustomImageTextRowWidgetState extends State<CustomImageTextRowWidget> {

  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return CustomInkWell(
      onTap: ()async{
        setState(() {
          _isTapped = !_isTapped;
        });
        await Future.delayed(Duration(milliseconds: 200),(){
          Navigator.push(context, MaterialPageRoute(builder: (context){return EditProfile(title: widget.title,fieldInfo: widget.fieldInfo,);}));
          setState(() {
            _isTapped = !_isTapped;
          });

        });
      },
      child: Container(
        color: _isTapped == true ? Color(0xFFEBF0FF): Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 15),
        child: Row(
          children: [
            Image.asset(widget.imageUrl,fit: BoxFit.cover,width: 15,),
            SizedBox(width: 15,),
            Text(widget.title,style: CustomTextStyle.smallBoldTextStyle1(),),
            Spacer(),
            Text(widget.title1,style: CustomTextStyle.smallTextStyle1(color: Colors.grey),),



          ],
        ),
      ),
    );
  }
}
