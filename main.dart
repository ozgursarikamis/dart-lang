void main() {
  SuperUser superUser = SuperUser('Yoshi', 20);
  superUser.publish();

  superUser.login();
}

class User {
  String username;
  int age;

  void login() {
    print('$username user logged in');
  }

  User(String _username, int _age) {
    this.username = _username;
    this.age = _age;
  }
}

class SuperUser extends User {
  SuperUser(String username, int age) : super(username, age);

  void publish() {
    print('published update by $username');
  }
}
