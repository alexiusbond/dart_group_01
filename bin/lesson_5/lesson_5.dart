import 'bank_account.dart';
import 'person.dart';

void main() {
  int number = 5;
  BankAccount account1 = BankAccount.withInitialBalance('123456', 100);
  print(number);
  print(account1);
  account1.displayAccountInfo();
  // Нельзя обратиться к приватному свойству из другого файла
  // account1.balance = account1.balance - 50;
  account1.displayAccountInfo();

  final account2 = BankAccount('654321');
  account2.displayAccountInfo();
  account2.deposit(150);
  account2.withdraw(50);
  // Нельзя обратиться к приватному свойству из другого файла
  // account2.balance = 1000000;
  account2.displayAccountInfo();

  Person myFriend = Person('Alice', 30);
  myFriend.introduce();
  myFriend.age = 31;
  myFriend.introduce();
  print('My friend\'s name is ${myFriend.name}');
  print('My friend\'s name is ${myFriend.getName()}');
  // Ошибка: нельзя обратиться к приватному методу из другого файла
  // myFriend._wasBorn();
  // myFriend._wasBorn();
  // myFriend._wasBorn();

  myFriend.bankAccount = account2;

  print('Bank Account info for ${myFriend.name}:');
  myFriend.bankAccount!.displayAccountInfo();

  // Длинный пример создания объекта Person с банковским счетом
  // final me = Person(
  //   'Bob',
  //   25
  // );
  // BankAccount myAccount = BankAccount.withInitialBalance(
  //   '112233',
  //   500
  // );
  // me.bankAccount = myAccount;

  // Короткий пример создания объекта Person с банковским счетом
  final me = Person.withBankAccount('Bob', 25, BankAccount.withInitialBalance('112233', 500));
  me.introduce();
  print('My bank account info:');
  me.bankAccount!.displayAccountInfo();
}

void testFunction() {
  print('This is a test function');
}
