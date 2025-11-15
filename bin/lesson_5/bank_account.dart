class BankAccount {
  // Свойства класса, описывающие состояние банковского счета
  final String _accountNumber;
  double _balance;

  // Конструктор класса
  // BankAccount(String accountNumber, double initialBalance) {
  //   this.accountNumber = accountNumber;
  //   this.balance = initialBalance;
  // }

  // Альтернативный синтаксис конструктора
  BankAccount(this._accountNumber) : _balance = 0.0;

  // Именованный конструктор
  BankAccount.withInitialBalance(this._accountNumber, this._balance);

  // Методы класса, описывающие поведение банковского счета
  void deposit(double amount) {
    if (amount > 0) {
      _balance = _balance + amount;
    }
  }

  void withdraw(double amount) {
    if (amount > _balance) {
      print('Not enough balance to withdraw $amount');
    } else {
      _balance = _balance - amount;
    }
  }

  void displayAccountInfo() {
    print('Account Number: $_accountNumber, Balance: $_balance');
  }
}
