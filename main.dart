void main() {
  Iterable numbers = [1, 2, 3, 4, 5];
  for (var item in numbers) {
    if (item > 4) {
      throw ArgumentError('the number is greater than 4');
    } else {
      print(item);
    }
  }
}
