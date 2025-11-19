import 'animals.dart';
import 'utilities.dart';

void main() {
  Animal.displayAnimalCount();

  print('\n--- Cat Info ---');
  Cat cat = Cat('Whiskers', 3, Color.white);
  cat.displayInfo();
  cat.meow();

  print('\n--- Dog Info ---');
  Dog dog = Dog('Buddy', 5, 'Golden Retriever');
  dog.displayInfo();
  dog.bark();

  print('\n--- Parrot Info ---');
  Parrot parrot = Parrot('Polly', 2);
  parrot.displayInfo();
  parrot.fly();

  print('\n--- Fighting Dog Info ---');
  FightingDog fightingDog = FightingDog('Rex', 4, 'Bulldog', 10);
  fightingDog.displayInfo();
  fightingDog.bark();
  // fightingDog.fly(); // This will cause an error since FightingDog doesn't have fly() method
  fightingDog.fight();

  print('\n--- Property Access ---');
  if (fightingDog.breed == 'Bulldog') {
    print('This dog is dangerous');
  }

  if (cat.color == Color.white) {
    print('This cat is beautiful');
  }

  Animal.displayAnimalCount();
  Animal.resetAnimalCount();

  print(Converter.celsiusToFahrenheit(67));
  print(Converter.fahrenheitToCelsius(152));

  print(Calculator.add(5, 10));
}
