import 'package:e_commerce/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:e_commerce/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:e_commerce/features/auth/presentation/screens/splash_screen.dart';
import 'package:e_commerce/features/auth/presentation/screens/verify_otp_screen.dart';
import 'package:e_commerce/features/shared/presentation/main_nav_holder_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes{

  static Route<dynamic>onGenerateRoute(RouteSettings settings){

    Widget widget=SizedBox();
    switch(settings.name){
      case SplashScreen.routeName:
        widget=SplashScreen();
      case SignInScreen.routeName:
        widget=SignInScreen();
      case SignUpScreen.routeName:
        widget=SignUpScreen();
      case VerifyOtpScreen.routeName:
        widget=VerifyOtpScreen();
      case MainNavHolderScreen.routeName:
        widget=MainNavHolderScreen();
    }
    return MaterialPageRoute(builder: (_)=>widget);
  }
}