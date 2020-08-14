main() {
  print([1, 3, 4].sum());
  if ('pizzza'.isValidName) {
    print('pizza is valid');
  }

  if ('pizza'.isValid()) {
    print('pizza is valid again.');
  }

  // to prevent confusion with other libraries methods:
  print(ExtendedString('pizza').isValidName);
  print(ExtendedString('pizza').isValid());
}

extension ExtendedString on String {
  bool get isValidName {
    return !this.contains(new RegExp(r'[0-9]'));
  }

  isValid() {
    return this.contains(new RegExp(r'[a-z]'));
  }
}

extension IterableNumX<T extends num> on Iterable<T> {
  T sum() {
    var sum = (T == int ? 0 : 0.0) as T;

    for (var current in this) {
      if (current != null) {
        sum += current;
      }
    }
    return sum;
  }
}
