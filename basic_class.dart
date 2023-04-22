void main() {
  var instance1 = Car(color: "White", model: "Nissan");
  var instance2 = Car.startWithoutModel("Black");

  print(instance1.printData());
  print(instance2.printData());

  print(instance1.carEngine(CarEngineEnum.V6));
}

enum CarEngineEnum {
  V6,
  V8,
  ASPIRATED_ENGINE,
}

class Car {
  late String color;
  String? model;

  Car({required String color, String? model}) {
    this.color = color;
    this.model = model;
  }

  Car.startWithoutModel(String color) : this(color: color, model: "Fiat");

  Map<String, String> printData() {
    return {
      "color": this.color,
      "model": this.model ?? "Ferrari",
    };
  }

  String carEngine(CarEngineEnum engineType) {
    switch (engineType) {
      case CarEngineEnum.V6:
        return "V6 ENGINE";
      case CarEngineEnum.V8:
        return "V8 ENGINE";
      case CarEngineEnum.ASPIRATED_ENGINE:
        return "Aspirated Engine is good too";
    }
  }
}
