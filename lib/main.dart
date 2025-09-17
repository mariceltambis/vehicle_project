import 'vehicle.dart';
import 'car.dart';
import 'motorcycle.dart';

void main() {
  print('--- Base Vehicle ---');
  var v1 = Vehicle(brand: 'Generic', model: 'ModelX', year: 2020);
  print(v1.info());
  v1.accelerate(50);
  v1.brake(20);

  print('\n--- Car Demo ---');
  var car1 = Car(brand: 'Toyota', model: 'Corolla', year: 2022, passengers: 5);
  print(car1.carInfo());
  car1.accelerate(180); // tests max speed override
  car1.honk();

  print('\n--- Motorcycle Demo ---');
  var moto1 = Motorcycle(brand: 'Yamaha', model: 'R15', year: 2021);
  print(moto1.motorcycleInfo());
  moto1.accelerate(25);
  moto1.popWheelie();
  moto1.brake(10);

  print('\n--- Motorcycle with Sidecar ---');
  var moto2 = Motorcycle(brand: 'Harley', model: 'Classic', year: 2019, hasSidecar: true);
  print(moto2.motorcycleInfo());
  moto2.accelerate(30);
  moto2.popWheelie();
  moto2.brake(10);
}