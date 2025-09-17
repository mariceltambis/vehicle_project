import 'vehicle.dart';

// Derived class: Car
class Car extends Vehicle {
  int passengers; // unique property

  Car({
    required String brand,
    required String model,
    double speed = 0,
    required int year,
    this.passengers = 4,
  }) : super(brand: brand, model: model, speed: speed, year: year);

  // Unique method
  void honk() {
    print('$brand $model honks: Beep Beep!');
  }

  // Override accelerate to include max speed
  @override
  void accelerate(double increment) {
    const double maxSpeed = 200; // km/h
    if (speed + increment > maxSpeed) {
      print('$brand $model cannot exceed max speed of $maxSpeed km/h');
      super.accelerate(maxSpeed - speed); // accelerate only up to max
    } else {
      super.accelerate(increment);
    }
  }

  String carInfo() => '${info()} → Passengers: $passengers';
}
