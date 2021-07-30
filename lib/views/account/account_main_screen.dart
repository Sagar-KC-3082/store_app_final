import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/views/home/home_screen/current_order.dart';
import 'package:store_app/views/home/home_screen/wallet.dart';
import 'package:store_app/views/payment/payment_method_view.dart';
import 'package:store_app/views/profile/profile_mainscreen.dart';
import 'package:store_app/views/terms_and_condition/customer_support.dart';
import 'package:store_app/views/terms_and_condition/faq.dart';
import 'package:store_app/views/terms_and_condition/privacy_policy.dart';
import 'package:store_app/views/terms_and_condition/tems_and_condition.dart';
import 'package:store_app/widgets/custom_appbar.dart';
import 'package:store_app/widgets/custom_icon_text_row.dart';
import 'package:store_app/widgets/custom_inkwell.dart';

class AccountMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarRowWithCustomIconWithNoSpacing(title: "Account",),
              SizedBox(height: 30,),

              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    CustomInkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){return ProfileScreen();}));
                          },
                        child: CustomIconTextRow(icon: Icon(Icons.person,color: AppColors.primaryDarkBlue,size: 20,),text: "Profile",)),
                    CustomInkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){return CurrentOrderView(title: "Current Order",);}));
                          },
                        child: CustomIconTextRow(icon: Icon(Icons.shopping_bag,color: AppColors.primaryDarkBlue,size: 20,),text: "Order",)),
                    CustomInkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){return PaymentMethod();}));
                          },
                        child: CustomIconTextRow(icon: Icon(Icons.credit_card,color: AppColors.primaryDarkBlue,size: 20,),text: "Payment",)),
                    CustomInkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){return MyWalletScreen();}));
                          },
                        child: CustomIconTextRow(icon: Icon(Icons.account_balance_wallet,color: AppColors.primaryDarkBlue,size: 20,),text: "Wallet",)),
                    CustomInkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){return TermsAndCondition();}));
                          },
                        child: CustomIconTextRow(icon: Icon(Icons.article_sharp,color: AppColors.primaryDarkBlue,size: 20,),text: "Terms of use",)),
                    CustomInkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){return PrivacyPolicyScreen();}));
                          },
                        child: CustomIconTextRow(icon: Icon(Icons.article_outlined,color: AppColors.primaryDarkBlue,size: 20,),text: "Privacy Policy",)),
                    CustomInkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){return CustomerSupportScreen();}));
                          },
                        child: CustomIconTextRow(icon: Icon(Icons.support_agent,color: AppColors.primaryDarkBlue,size: 20,),text: "Customer support",)),
                    CustomInkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){return FAQScreen();}));
                          },
                        child: CustomIconTextRow(icon: Icon(Icons.person_search_rounded,color: AppColors.primaryDarkBlue,size: 20,),text: "FAQ",)),
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
