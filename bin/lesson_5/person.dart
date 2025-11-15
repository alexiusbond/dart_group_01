import 'bank_account.dart';

class Person {
  final String _name;
  int _age;
  BankAccount? _bankAccount;

  Person(this._name, this._age) {
    _wasBorn();
  }

  Person.withBankAccount(this._name, this._age, this._bankAccount) {
    _wasBorn();
  }

  void _wasBorn() {
    print('$_name was born in ${calculateYearOfBirth()}');
  }

  int calculateYearOfBirth() {
    return 2025 - _age;
  }

  set age(int newAge) {
    if (newAge >= 0) {
      _age = newAge;
    } else {
      print('Age cannot be negative. Keeping the previous age: $_age');
    }
  }

  // Getter для имени
  String getName() {
    return _name;
  }

  // Альтернативный синтаксис геттера для имени
  String get name => _name;

  void introduce() {
    print(
      "Hello, my name is $_name and I am $_age years old. I was born in ${calculateYearOfBirth()}.",
    );
  }

  set bankAccount(BankAccount account) {
    _bankAccount = account;
  }

  BankAccount? get bankAccount => _bankAccount;
}
