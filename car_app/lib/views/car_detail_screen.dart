import 'package:car_app/core/constants.dart';
import 'package:car_app/model/car.dart';
import 'package:car_app/views/widgets/car_items.dart';
import 'package:flutter/material.dart';

class CarDetailScreen extends StatelessWidget {
  final Car car;
  const CarDetailScreen({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'Images/map.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          CustomizedAppBar(),
          Positioned(
            left: 10,
            right: 10,
            bottom: 20,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(19),
                  margin: EdgeInsets.only(top: 45),
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      CarDetails(car: car),
                      Divider(color: Colors.white),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('Images/driver.png'),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Jesica Smith",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Licence No: 1234 5678 9012",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "369",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Ride",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text("5.0"),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 16,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 16,
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                 
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                                      decoration: BoxDecoration(color: cardColor, borderRadius: BorderRadius.circular(8)),
                                      child: Text("Call",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                      const SizedBox(width: 15),
                                      Container(
                                      padding: EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 20),
                                      decoration: BoxDecoration(color: cardColor, borderRadius: BorderRadius.circular(8)),
                                      child: Text("Book Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(right: 20, child: Hero(
                  tag: car.image,
                  child: Image.asset(car.image))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CarDetails extends StatelessWidget {
  const CarDetails({super.key, required this.car});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Text("price/hr", style: TextStyle(color: Colors.white)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CarItems(name: "Brand", value: car.brand),
            CarItems(name: "Model", value: car.model),
            CarItems(name: "CO2", value: car.co2),
            CarItems(name: "Fuel Cons", value: car.fuelCons),
          ],
        ),
      ],
    );
  }
}

class CustomizedAppBar extends StatelessWidget {
  const CustomizedAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
