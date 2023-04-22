void main() {
  var firstList = [1, 2, 3];
  var secondList = [4, 5, 6];
  var finalList = [...firstList, ...secondList];

  var thirdList = [7, 8, 9];
  var fourList = null;
  var listWithNull = [...thirdList, ...?fourList];

  print(finalList);
  print(listWithNull);

  var hasPromo = true;

  var items = [
    'Smartphones',
    'Furniture',
    'Food',
    if (hasPromo) 'Education',
  ];

  print(items);

  var listOfInts = [1, 2, 3];
  var listOfStrings = [
    '#0',
    for (var item in listOfInts) '#${item}',
    '#4',
  ];

  print(listOfStrings);
}
