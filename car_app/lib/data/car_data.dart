
import 'package:car_app/model/car.dart';

class CarData {
  static List<Car> carList = [
    Car(
      image: 'Images/bentley.png',
      price: 120,
      brand: 'Bentley',
      model: '3A 9200',
      co2: '77/km',
      fuelCons: '5.5 L',
    ),
    Car(
      image: 'Images/rolls_royce.png',
      price: 185,
      brand: 'RR',
      model: '3A 9200',
      co2: '77/km',
      fuelCons: '5.5 L',
    ),
    Car(
      image: 'Images/maserati.png',
      price: 100,
      brand: 'Maserati',
      model: '3A 9200',
      co2: '77/km',
      fuelCons: '5.5 L',
    ),
    Car(
      image: 'Images/cadillac.png',
      price: 90,
      brand: 'Cadillac',
      model: '3A 9200',
      co2: '77/km',
      fuelCons: '5.5 L',
    ),
  ];

  /// optional helper
  static List<Car> getCars() => carList;
}
