import 'package:e_commerce/features/home/presentaion/widgets/home_app_bar.dart';
import 'package:e_commerce/features/home/presentaion/widgets/product_search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Padding(
        padding: const  .all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProductSearchBar(),
            ],
          ),
        ),
      ),
    );
  }
}


