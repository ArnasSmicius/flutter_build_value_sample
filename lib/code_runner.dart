import 'package:flutter_built_value_sample/model/built_vehicle.dart';

class CodeRunner {
  static void runCode() {
    var car = BuiltVehicle((b) => b
      ..type = VehicleType.car
      ..brand = 'Tesla'
      ..price = 100000
      ..passengerNames.addAll(['John', 'Linda']));

    var car2 = BuiltVehicle((b) => b
      ..type = VehicleType.car
      ..brand = 'Tesla'
      ..price = 100000);

    var copiedTrain = car.rebuild((b) => b
      ..brand = 'Skoda'
      ..type = VehicleType.train);

    print(car);
    print(copiedTrain);
    print(car == car2);
    print(car == copiedTrain);

    final carJson = car.toJson();
    print(carJson);

    final carFromJson = BuiltVehicle.fromJson(carJson);
    print(carFromJson);
  }
}
