import 'vehicle.dart';

// Derived class: Motorcycle
class Motorcycle extends Vehicle {
  bool hasSidecar; // unique property

  Motorcycle({
    required String brand,
    required String model,
    double speed = 0,
    required int year,
    this.hasSidecar = false,
  }) : super(brand: brand, model: model, speed: speed, year: year);

  // Unique method
  void popWheelie() {
    if (speed > 20 && !hasSidecar) {
      print('$brand $model pops a wheelie!');
    } else if (hasSidecar) {
      print('$brand $model cannot pop a wheelie with a sidecar.');
    } else {
      print('$brand $model needs more speed to pop a wheelie.');
    }
  }

  // Override brake to include sidecar effect
  @override
  void brake(double decrement) {
    if (hasSidecar) {
      print('$brand $model brakes slower because of sidecar.');
      super.brake(decrement / 2); // brakes slower with sidecar
    } else {
      super.brake(decrement);
    }
  }

  String motorcycleInfo() => '${info()} → Sidecar: ${hasSidecar ? "Yes" : "No"}';
}
