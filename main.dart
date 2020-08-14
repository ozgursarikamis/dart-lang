bool predicate(String element) {
  return element.length > 5;
}

void main() {
  var numbers = [1, 3, -2, 0, 4, 5];
  var numbersUntilZero = numbers.takeWhile((value) => value != 0);
  print('Numbers until zero $numbersUntilZero');

  var numbersAfterZero = numbers.skipWhile((value) => value != 0);
  print('Numbers until zero $numbersAfterZero');
}
