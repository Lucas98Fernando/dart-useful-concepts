void main() {
  var yourVehicle = Vehicles.car;

  print(yourVehicle.isNew);
}

enum VehicleType {
  aquatic,
  terrestrial,
  air,
}

enum Vehicles {
  jetski(
    type: VehicleType.aquatic,
    hasWheels: false,
    wheelsAmount: 0,
    year: 2015,
  ),
  car(
    type: VehicleType.terrestrial,
    hasWheels: true,
    wheelsAmount: 4,
    year: 2021,
  ),
  motorcycle(
    type: VehicleType.terrestrial,
    hasWheels: true,
    wheelsAmount: 2,
    year: 2019,
  );

  const Vehicles({
    required this.type,
    required this.hasWheels,
    required this.wheelsAmount,
    required this.year,
  });

  final VehicleType type;
  final bool hasWheels;
  final int wheelsAmount;
  final int year;

  bool get isNew => year >= 2021;
}
