import 'package:e_commerce/app/app_color.dart';
import 'package:e_commerce/features/shared/provider/main_nav_holder_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainNavHolderScreen extends StatefulWidget {
  const MainNavHolderScreen({super.key});
  static const String routeName = '/main-nav-holder';
  @override
  State<MainNavHolderScreen> createState() => _MainNavHolderScreenState();
}

class _MainNavHolderScreenState extends State<MainNavHolderScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainNavHolderProvider>(
      builder: (context, mainNavHolderProvider, _) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: mainNavHolderProvider.currentIndex,
            unselectedItemColor: Colors.grey,
            selectedItemColor: AppColor.themeColor,
            showUnselectedLabels: true,
            onTap: mainNavHolderProvider.changeIndex,
            items:  [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.dashboard),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket_outlined),
                label: 'Carts',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outlined),
                label: 'Favorites',
              ),
            ],
          ),
          body: Center(
            child: Text('Main Nav Holder Screen'),
          ),
        );
      }
    );
  }
}