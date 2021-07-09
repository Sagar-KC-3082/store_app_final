import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:store_app/views/authentication/pre_login_view.dart';
import 'package:store_app/views/home/home_screen/home_screen.dart';
import 'package:store_app/views/home/user_type_selection.dart';


void main(){
  runApp(GetMaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.rightToLeftWithFade,
  ));
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PreLoginView();
  }
}
