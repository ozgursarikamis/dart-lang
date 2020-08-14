bool predicate(String element) {
  return element.length > 5;
}

void main() {
  var items = ['Salad', 'Popcorn', 'Toast', 'Lasagne'];
  var lenght7 = items.where((element) => element.length == 7);
  for (var item in lenght7) {
    print(item);
  }
}
