void main() {
  Describe('Özgür', 36).describe();
  Describe('Halime', 38).describeWithEmphasis();
}

abstract class Describable {
  void describe();
  void describeWithEmphasis() {
    print('===================');
    describe();
    print('===================');
  }
}

class Describe implements Describable {
  String name;
  int age;

  Describe(this.name, this.age);

  @override
  void describe() {
    print(this.name);
  }

  @override
  void describeWithEmphasis() {
    print(this.age);
  }
}
