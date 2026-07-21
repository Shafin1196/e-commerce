import 'package:e_commerce/app/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
   static ThemeData get lightTheme => _lightThemeData;
   static ThemeData get darkTheme => _darkThemeData;
  static final ThemeData _lightThemeData= ThemeData(
    colorSchemeSeed: AppColor.themeColor,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColor.themeColor,
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      labelLarge: TextStyle(
        color:Colors.grey,
        fontWeight: FontWeight.w500,
      ),
    ),
    inputDecorationTheme: _inputDecorationTheme,
    filledButtonTheme: _filledButtonTheme,
   );

 
  static final FilledButtonThemeData _filledButtonTheme= FilledButtonThemeData(
    style:FilledButton.styleFrom(
      backgroundColor: AppColor.themeColor,
      fixedSize: Size.fromWidth(double.maxFinite),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
  
  static final ThemeData _darkThemeData= ThemeData(
    colorSchemeSeed: AppColor.themeColor,
    brightness: Brightness.dark,
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColor.themeColor,
      
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
    ),
    scaffoldBackgroundColor: Colors.black,
   filledButtonTheme: _filledButtonTheme,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      labelLarge: TextStyle(
        color:Colors.grey,
        fontWeight: FontWeight.w500,
      ),
    ),
    inputDecorationTheme: _inputDecorationTheme,
  );
  
  static final _inputDecorationTheme=InputDecorationThemeData(
                  contentPadding: EdgeInsets.only(left: 16),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.themeColor,
                      width: 2
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.themeColor,
                      width: 2
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.themeColor,
                      width: 2
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide:  BorderSide(
                      color: Colors.red,
                      width: 2
                    ),
                  ),
                );
}