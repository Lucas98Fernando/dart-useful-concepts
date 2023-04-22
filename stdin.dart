import 'dart:convert';
import 'dart:io';

void main() {
  print("Sum");
  print("");
  print("First number:");
  var firstNumber = readLine();
  print("Second number:");
  var secondNumber = readLine();
  var sum = parseToNum(firstNumber) + parseToNum(secondNumber);
  print("$firstNumber + $secondNumber is equal to $sum");
  print(String.fromCharCodes(Runes('\u{1f600}')));
}

String? readLine() {
  return stdin.readLineSync(encoding: utf8);
}

num parseToNum(String? value) {
  return num.parse(value.toString());
}
