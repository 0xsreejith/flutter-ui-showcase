import 'package:flutter/material.dart';
import 'package:gaming_shop/core/constants.dart';
import 'package:gaming_shop/screens/product_list.dart';
import 'package:gaming_shop/screens/product_lists.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = [
    "Controllers",
    "Headsets",
    "Consoles",
    "Games",
    "Accessories",
  ];

  int currentIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.black),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.search, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [welcomeText(),categorySection(),ProductList()]
      ),
    );
  }

  SizedBox categorySection() {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Container(
              padding: EdgeInsets.only(left: 32),
              child: Column(
                children: [
                  Text(
                    categories[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: currentIndex == index
                          ? kSecondaryColor
                          : kSecondTextColor,
                    ),
                  ),
                  SizedBox(height: 4),
                  currentIndex == index
                      ? Container(
                          height: 3,
                          width: 30,
                          decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )
                      : SizedBox.shrink(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Padding welcomeText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
      child: Text(
        "Welcome to\nPlaysatation® Acessories",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
