import 'package:car_app/core/constants.dart';
import 'package:car_app/data/car_data.dart';
import 'package:car_app/views/car_detail_screen.dart';
import 'package:car_app/views/widgets/car_items.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
        title: const Text(
          'Availabe Car',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white),
          ),
          SizedBox(width: 5),   
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: CarData.getCars().length,
        itemBuilder: (context, index) {
          final car = CarData.getCars()[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CarDetailScreen(car: car),
                ),
              );
            },
            child: Container(
                margin: EdgeInsets.only(bottom: 20),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(
                      left: 25,
                      bottom: 15,
                      right: 20,
                      top: 10,
                    ),
                    margin: EdgeInsets.only(top: 30, left: 10, right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: cardColor,
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$${car.price.toString()}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("price/hr", style: TextStyle(color: Colors.white),),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          CarItems(name: "Brand", value: car.brand),
                          CarItems(name: "Model", value: car.model),
                          CarItems(name: "CO2", value: car.co2),
                          CarItems(name: "Fuel Cons", value: car.fuelCons),
                        ],)
                       
                      ],
                    ),
                  ),
                   Positioned(
                    right: 20,
                    child: Hero(
                      tag: car.image,
                      child: Image.asset(car.image)))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
