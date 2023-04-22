void main() {
  var instance = MathOperations();

  print(instance.sum(4, 2));
  print(instance.subtraction(4, 2));
}

mixin SumMixin {
  num sum(a, b) => a + b;
}

mixin SubtractionMixin {
  num subtraction(a, b) => a - b;
}

class MathOperations with SumMixin, SubtractionMixin {}
