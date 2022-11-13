import 'package:college_shopify/constants.dart/text_style.dart';
import 'package:college_shopify/view/display_products_screen.dart';
import 'package:college_shopify/view/products_screen.dart';
import 'package:college_shopify/widgets/heading_text.dart';
import 'package:college_shopify/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                HeadingText(text: "Home"),
                SizedBox(
                  height: 75.h,
                ),
                ProductCard(
                  text: "Selling Product",
                  image: "assets/images/selling_product.png",
                  height: 200,
                  onTap: () {
                    ProductsScreen();
                  },
                ),
                SizedBox(
                  height: 30.h,
                ),
                ProductCard(
                  text: "Buying Product",
                  image: "assets/images/buying_product.jpg",
                  height: 200,
                  onTap: () {
                    DisplayProductsScreen();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
