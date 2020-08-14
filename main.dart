bool predicate(String element) {
  return element.length > 5;
}

void main() {
  var evenNumbers = [1, -2, 3, 42].where((number) => number.isEven);

  for (var item in evenNumbers) {
    print(item);
  }
}
