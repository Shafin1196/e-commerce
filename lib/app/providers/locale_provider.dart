import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
   Locale _currentLocale =  Locale('en');
   List<Locale> _locales= [Locale('en'), Locale('bn')];
   Locale get currentLocale => _currentLocale;
   List<Locale> get supportedlocales => _locales;
   
   void changeLocale(Locale locale) {
     _currentLocale = locale;
     _saveLocale(locale);
     print('Locale changed to: ${locale.languageCode}');
     notifyListeners();
   }

   Future<void> _saveLocale(Locale locale) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('locale', locale.languageCode);
   }

   Future<void> setDefaultThemeMode() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? locale =   sharedPreferences.getString('locale');
    if (locale != null) {
      print('Retrieved locale from SharedPreferences: $locale');
      _currentLocale = Locale(locale);
      notifyListeners();
    }
   }
   }

   

   

 
 