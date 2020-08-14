bool predicate(String element) {
  return element.length > 5;
}

void main() {
  var extendedUser = ExtendedUser('Özgür', 36);
  print(extendedUser.age);
}

class User {
  String name;
  int age;

  User(this.name, this.age);
}

class ExtendedUser extends User {
  ExtendedUser(name, age) : super(name, age);
}
