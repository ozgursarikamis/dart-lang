void main() {
  /**
   * The difference with a List is that with the Iterable, 
   * you can’t guarantee that reading elements by index will 
   * be efficient. Iterable, as opposed to List, 
   * doesn’t have the [] operator.
   */

  Iterable<int> iterable = [1, 2, 3];
  // int value = iterable[1]; // Invalid
  int value = iterable.elementAt(1);
  print(value);
}
