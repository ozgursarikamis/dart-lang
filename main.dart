void main() {
  bool isNight = false;
  print(isNight);

  print(greeting());
  print(arrowFunc());

  print('\n');

  List names = ['Özgür', 'Halime', 'Zana'];
  names.add('added value');
  names.remove('Özgür');
  names.removeAt(2);

  for (var name in names) {
    print(name);
  }
}

String greeting() {
  return 'Hello';
}

String arrowFunc() => 'Hello';
