bool predicate(String element) {
  return element.length > 5;
}

void main() {
  var items = ['Salad', 'Popcorn', 'Toast', 'Lasagne'];

  var element1 = items.firstWhere((element) => element.length > 5);
  print(element1);

  var element2 = items.firstWhere(predicate);
  print(element2);

  var element3 =
      items.firstWhere((element) => element.length > 10, orElse: () => 'None');
  print(element3);

  var element4 = items.singleWhere((element) => element == 'Popcorn');
  print(element4);

  if (items.any((element) => element == 'Salad')) {
    print('we have a salad');
  }
  if (items.any((element) => element.contains('Salad'))) {
    print('we have a salad');
  }
}
