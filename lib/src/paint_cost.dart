import 'dart:io';

import 'paint.dart';

class PaintingCost {
  double area;
  Paint paint;
  bool isInterior;

  PaintingCost({
    required this.area,
    required this.paint,
    required this.isInterior,
  });

  double calculateCost() {
    double locationMultiply = isInterior ? 1 : 2;
    return locationMultiply * area * paint.costPerSquareMeter;
  }

  static void userInputCalculateCost() {
    stdout.write('Enter the area in square meters: ');
    double area = double.parse(stdin.readLineSync()!);
    if (area != null) {
      stdout.write('Enter the name of the paint: ');
      String paintName = stdin.readLineSync()!;
      if (paintName != null) {

      }
      stdout.write('Enter the cost of the paint per square meter: ');
      double paintCostPerSquareMeter = double.parse(stdin.readLineSync()!);
      if (paintCostPerSquareMeter != null) {
        stdout.write('Is the location interior? (yes/no): ');
        String locationInput = stdin.readLineSync()!;
        if (locationInput != null) {
          bool isInterior = locationInput.toLowerCase() == 'yes';
          if (isInterior != null) {
            Paint paint = Paint(
              name: paintName,
              costPerSquareMeter: paintCostPerSquareMeter,
            );

            PaintingCost calculator = PaintingCost(
              area: area,
              paint: paint,
              isInterior: isInterior,
            );

            double totalCost = calculator.calculateCost();
            print('The total cost of  ${paint.name} paint is: \$${totalCost}');
          }
        }
      }
    }
  }
}


