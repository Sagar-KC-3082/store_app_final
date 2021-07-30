import 'package:custom_navigator/custom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/configs/styles/app_colors.dart';
import 'package:store_app/views/account/account_main_screen.dart';
import 'package:store_app/views/home/home_screen/home_screen.dart';
import 'package:store_app/views/notification/notification_main_screen.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      scaffold: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.primaryDarkOrange,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 28),
          unselectedIconTheme: IconThemeData(size: 25),
          selectedLabelStyle: TextStyle(fontFamily: "PoppinsRegular"),
          unselectedLabelStyle: TextStyle(fontFamily: "PoppinsRegular"),
          items: [
            BottomNavigationBarItem(icon:  Icon(CupertinoIcons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_active_outlined),label: "Notification"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_crop_circle),label: "Account"),
          ],
        ),
      ),
      children: [
        HomeScreenView(),
        NotificationScreen(),
        AccountMainScreen()
      ],
      onItemTap: (index){},
    );
  }
}
