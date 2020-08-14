void main() {
  var numbers = [1, 2, 3, 4, 5];
  Iterable<int> output = numbers.map((e) => e * 2);
  print(output);
}
