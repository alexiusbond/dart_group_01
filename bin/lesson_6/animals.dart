class Animal {
  // Статическое поле для подсчета созданных экземпляров
  static int _animalCount = 0;

  // Статический метод для отображения количества созданных экземпляров
  static void displayAnimalCount() {
    print('Created Animal Instances: ${_animalCount}');
  }

  static void resetAnimalCount() {
    _animalCount = 0;
    displayAnimalCount();
  }

  String _name;
  int _age;

  Animal(this._name, this._age) {
    _animalCount++;
  }

  void displayInfo() {
    print('NAME: $_name, AGE: $_age');
  }
}

class Dog extends Animal {
  String _breed;

  Dog(String name, int age, this._breed) : super(name, age);

  // Переопределение метода displayInfo
  @override
  void displayInfo() {
    super.displayInfo();
    print('Breed: $_breed');
  }

  String get breed => _breed;

  void bark() {
    print('Woof! Woof!');
  }
}

enum Color { black, white, brown, gray }

class Cat extends Animal {
  Color _color;
  Cat(String name, int age, this._color) : super(name, age);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Color: $_color');
  }

  Color get color => _color;

  void meow() {
    print('Meow! Meow!');
  }
}

class Parrot extends Animal {
  Parrot(String name, int age) : super(name, age);

  void fly() {
    print('$_name is flying!');
  }
}

class FightingDog extends Dog {
  int _wins;
  FightingDog(String name, int age, String breed, this._wins)
    : super(name, age, breed);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Wins: $_wins');
  }

  void fight() {
    print('$_name is fighting!');
  }
}
