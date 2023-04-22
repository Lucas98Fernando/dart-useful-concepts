void main() {
  var constNumbers = const [1];
  const Object i = 4;
  const list = [i as int];
  const map = {if (i is int) i: 'int'};
  const set = {if (list is List<int>) ...list};

  constNumbers = [1, 2, 3];
  print(constNumbers);
  print(map);
  print(set);
}
