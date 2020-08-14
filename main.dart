void main() {
  Crocodile().hunt('zebra');
  Alligator().hunt('fish');
  Fish().feed();
}

mixin Swim {
  void swim() => print('Swimming');
}

mixin Bite {
  void bite() => print('Chomp');
}

mixin Crawl {
  void crawl() => print('Crawling');
}

abstract class Reptile with Swim, Crawl, Bite {
  void hunt(food) {
    print('${this.runtimeType}----');
    swim();
    crawl();
    bite();
    print('Eat $food');
  }
}

class Alligator extends Reptile {}

class Crocodile extends Reptile {}

class Fish with Swim, Bite {
  void feed() {
    print('----- fish -----');
    swim();
    bite();
  }
}
