import 'package:flutter/material.dart';
import 'package:store_app/configs/constants/app_constants.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/configs/styles/custom_text_style.dart';
import 'package:store_app/widgets/custom_appbar.dart';

class TermsAndCondition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppConstants.screenHorizontalPadding,vertical: AppConstants.screenVerticalPadding),
          child: Column(
            children: [
              CustomAppBarRowWithCustomIconWithNoSpacing(title: "Terms of use",),
              SizedBox(height: 30,),

              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                       Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis scelerisque sit amet eros ac facilisis. Sed ut felis sollicitudin, sagittis turpis et, gravida sapien. Ut et eros lacus. Nullam ullamcorper vel dolor id feugiat. Duis maximus ante id nulla vulputate, eu scelerisque purus molestie. \n\nCras id libero sit amet eros malesuada tincidunt. Fusce suscipit efficitur laoreet. Cras viverra magna non leo malesuada, dictum lacinia sapien ullamcorper. In leo turpis, feugiat quis lacinia vel, porttitor nec libero. Pellentesque dignissim dapibus gravida. Ut finibus mi vitae nunc faucibus tristique. Pellentesque sed molestie lorem.Morbi et eros vel nunc sagittis suscipit. Maecenas pretium sem nisi, nec placerat purus rhoncus eu. \n\nAliquam dignissim sit amet lorem convallis sagittis. Sed facilisis gravida velit vel rhoncus. Ut a mi aliquam, tincidunt est non, fringilla nunc. Proin eget velit lectus. Suspendisse a nunc a diam fringilla euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nam blandit urna justo, sed aliquet dolor commodo a. In dapibus tincidunt justo sit amet placerat. Suspendisse placerat porttitor imperdiet.Sed quis tristique nisl. \n\nPhasellus ac nulla ac lectus consectetur ultrices nec nec orci. Praesent interdum scelerisque porta. Donec egestas faucibus tortor, ac pulvinar justo convallis at. Aliquam tristique arcu libero. Donec efficitur arcu in felis tristique elementum. Aenean nisl massa, bibendum non tincidunt vitae, tincidunt sed nisi. Aenean aliquam molestie lacinia. Pellentesque suscipit vel neque nec cursus.In eget egestas lorem. Nam erat ante, commodo non neque ac, lobortis imperdiet erat. Nam eget leo dui. Praesent laoreet nulla non fringilla dapibus. Integer semper nunc odio, pellentesque finibus urna eleifend nec. Integer vitae leo est. Aenean commodo, turpis sed dapibus viverra, lectus ligula pretium ligula, id dapibus ligula augue eget ante. Aenean elementum tempus risus sit amet mollis.Ut a augue felis. Nam id consectetur augue. Donec a dignissim massa. Donec ut ligula orci. Pellentesque mattis sapien et nisl sagittis, ac malesuada mauris maximus. Aliquam erat volutpat. Ut dapibus molestie sagittis. Vestibulum eget posuere nunc. Duis mollis dapibus rutrum. Ut orci urna, varius sit amet erat ac, tempor vehicula ligula. \n\nPellentesque mollis, lacus ut pretium porttitor, velit tellus scelerisque elit, ut scelerisque ex sapien sed est. Vivamus lacinia neque nunc, luctus mollis nisi convallis a. Nam congue blandit consequat. Suspendisse semper massa a elementum vulputate. Aliquam finibus eleifend odio. Nullam tellus justo, venenatis a euismod tempor, pellentesque at turpis.",style: CustomTextStyle.smallTextStyle1(),)
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
