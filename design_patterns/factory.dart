void main() {
  var car = HighwayLogistics();
  print(car.planDelivery().delivery());
}

abstract class ITransport {
  String delivery();
}

abstract class Logistics {
  ITransport createTransport();

  ITransport planDelivery() {
    return createTransport();
  }
}

class Car implements ITransport {
  @override
  String delivery() {
    return "Car delivery by highway";
  }
}

class HighwayLogistics extends Logistics {
  @override
  ITransport createTransport() {
    return Car();
  }
}
