void main() {
  var instance = User("Lucas", 24);
  print(instance.showUserInfo());
  print(instance.showGuestInfo());
}

abstract class IUser {
  late String name;
  late int age;
  String showUserInfo();
}

abstract class IGuest {
  String showGuestInfo();
}

class User implements IUser, IGuest {
  late String name;
  late int age;

  User(String name, int age) {
    this.name = name;
    this.age = age;
  }

  @override
  String showUserInfo() {
    return "My name is ${this.name}, i'm ${this.age} years old";
  }

  @override
  String showGuestInfo() {
    return "Hello, i'm guest user";
  }
}
