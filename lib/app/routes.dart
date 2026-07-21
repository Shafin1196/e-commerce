import 'package:e_commerce/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:e_commerce/features/auth/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes{

  static Route<dynamic>onGenerateRoute(RouteSettings settings){

    Widget widget=SizedBox();
    switch(settings.name){
      case SplashScreen.routeName:
        widget=SplashScreen();
      case SignInScreen.routeName:
        widget=SignInScreen();
    }
    return MaterialPageRoute(builder: (_)=>widget);
  }
}