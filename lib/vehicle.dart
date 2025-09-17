class Vehicle {
  final String brand;
  final String model;
  double _speed; // private field for current speed
  int _year;     // private field for manufacturing year

  Vehicle({
    required this.brand,
    required this.model,
    double speed = 0,
    required int year,
  })  : _speed = speed,
        _year = year;

  // Getter and Setter for year with validation
  int get year => _year;
  set year(int value) {
    if (value < 1886) { // The first car was invented around 1886
      throw ArgumentError('Year cannot be before 1886.');
    }
    _year = value;
  }

  // Getter for speed (read-only)
  double get speed => _speed;

  // Method to accelerate
  void accelerate(double increment) {
    if (increment < 0) {
      print('Cannot accelerate by negative value.');
      return;
    }
    _speed += increment;
    print('$brand $model accelerates by $increment km/h → speed: $_speed km/h');
  }

  // Method to brake
  void brake(double decrement) {
    if (decrement < 0) {
      print('Cannot brake by negative value.');
      return;
    }
    _speed -= decrement;
    if (_speed < 0) _speed = 0;
    print('$brand $model brakes by $decrement km/h → speed: $_speed km/h');
  }

  // Description method
  String info() => '$brand $model ($year) → Speed: $_speed km/h';
}
