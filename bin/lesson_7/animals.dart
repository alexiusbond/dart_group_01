import 'interfeces.dart';
import 'mixins.dart';

// Можно наследовать
// Может содержать готовые методы
// Может содержать абстрактные методы, которые должны быть реализованы в подклассах
abstract class Animal implements Drawable {
  String name;
  int age;

  Animal(this.name, this.age);

  void sleep() {
    print('$name is sleeping.');
  }

  void makeSound();
}

class Cat extends Animal with Jump implements Playable {
  String color;
  Cat(super.name, super.age, this.color);

  @override
  void makeSound() {
    print('$name says Meow!');
  }

  @override
  void draw() {
    print('🐈');
  }

  @override
  String draw3D(String material) {
    return '3D Cat made of $material';
  }

  @override
  void play() {
    print('$name is playing with a ball of yarn.');
  }
}

class Parrot extends Animal with Jump, Fly implements Playable {
  Parrot(super.name, super.age);

  @override
  void makeSound() {
    print('$name says Squawk!');
  }

  @override
  void draw() {
    print('🦜');
  }

  @override
  String draw3D(String material) {
    return '3D Parrot made of $material';
  }

  @override
  void play() {
    print('$name is playing by mimicking sounds.');
  }
}

abstract class Reptile extends Animal {
  Reptile(super.name, super.age);

  void crawl() {
    print('$name is crawling.');
  }
}

class Snake extends Reptile {
  Snake(super.name, super.age);

  @override
  void makeSound() {
    print('$name hisses!');
  }

  @override
  void draw() {
    print('🐍');
  }

  @override
  String draw3D(String material) {
    return '3D Snake made of $material';
  }
}
