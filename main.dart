void main() {
  Iterable numbers = [1, 2, 3, 4, 5];
  for (var item in numbers) {
    try {
      if (item > 4) {
        throw Exception('the number is greater than 4');
      } else {
        print(item);
      }
    } catch (e) {
      print(e.message);
      print(e.errorName);
    }
  }
}
