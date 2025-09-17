// lib/vehicle.dart
class Vehicle {
  final String brand;
  final String model;
  int _year;
  double _speed;

  Vehicle({
    required this.brand,
    required this.model,
    required int year,
    double speed = 0,
  })  : _year = year,
        _speed = speed;

  // Getter and setter for _year (with validation)
  int get year => _year;
  set year(int value) {
    if (value < 1886) { // The first car was invented in 1886
      throw ArgumentError('Year must be 1886 or later.');
    }
    _year = value;
  }

  // Getter for speed
  double get speed => _speed;

  // Method 1: accelerate
  void accelerate(double increment) {
    if (increment <= 0) {
      print('Acceleration must be positive.');
      return;
    }
    _speed += increment;
    print('$brand $model accelerated by $increment km/h. New speed: $_speed km/h');
  }

  // Method 2: brake
  void brake(double decrement) {
    if (decrement <= 0) {
      print('Brake decrement must be positive.');
      return;
    }
    if (decrement > _speed) {
      _speed = 0;
    } else {
      _speed -= decrement;
    }
    print('$brand $model slowed down by $decrement km/h. New speed: $_speed km/h');
  }

  // Info method
  String info() => '$brand $model ($year) - Speed: $_speed km/h';
}
