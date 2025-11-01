void main() {
  // Вывод информация в консоль
  print('Hello world!');
  print(54);
  print(5.45); // Число с плавающей точкой

  // Комментарий: это однострочный комментарий
  /*
    Это многострочный комментарий
    Он может занимать несколько строк
    print('Этот код не выполнится');
  */

  // Типы данных: String, int, double, bool
  String myName = 'John Doe'; // Строка
  int myAge = 30; // Целое число
  double myHeight = 178.5; // Число с плавающей точкой
  bool isTeacher = true; // Логическое значение

  print(myName);
  print(myAge);
  print(myHeight);
  print(isTeacher);

  String myJob; // Объявление переменной без инициализации
  myJob = 'Dart Developer'; // Инициализация переменной
  int mySalary = 2000;
  print(myJob);
  print(mySalary);
  myJob = 'Senior Dart Developer'; // Изменение значения переменной
  mySalary = mySalary + 5000;
  print(myJob);
  print(mySalary);

  // Регистрозависимость и уникальность имен переменных
  String myPetName1 = 'Buddy';
  String myPetName2 = 'Max'; // Разные переменные
  // String my pet name = 'Charlie'; // Ошибка: пробелы в имени переменной
  // String 1stPetName = 'Rocky'; // Ошибка: имя переменной не может начинаться с цифры
  // String my_pet_name = 'Bella'; // Допустимо использование символа подчеркивания
  print(myPetName1);

  // Конкатенация строк и интерполяция
  print('My name is ' + myName + '. My job is ' + myJob + '.');
  print('My name is $myName. My job is $myJob.');
  print('I was born in 2025 - $myAge.');
  print('I was born in ${2025 - myAge}.');
  print('I was bon in ${2025 - myAge}, and my height is ${myHeight}cm.');

  // Экранированные символы
  print("Today I'm learning Dart programming language.");
  print("Today I'm learning \"Dart\" programming language.");
  print('This course costs \$50. \\');

  String veryLongText =
      'This is a very long text that needs to be split \n'
      '\tinto multiple lines for better readability. '
      'Dart allows string literals to be concatenated '
      'by simply placing them next to each other.';
  print(veryLongText);

  String multilineText = '''This is a multiline string.
                                    It can span multiple lines''';
  print(multilineText);

  // Функции для работы со строками
  String sampleString = '    Hello, Dart!   ';
  print(sampleString);
  print(sampleString.toUpperCase());
  print(sampleString.toLowerCase());
  print(sampleString.trim());
  print(sampleString.length);
  print(sampleString.contains('Dart'));
  print(sampleString.contains('Mike'));
  print(sampleString.replaceAll('Dart', 'Flutter'));

  // Арифметические операции
  print(1 + 2); // Сложение
  print(5 - 3); // Вычитание
  print(4 * 2); // Умножение
  print(8 / 4); // Деление
  print(8 ~/ 4); // Целочисленное деление
  print(18 ~/ 4); // Целочисленное деление
  print(5 % 2); // Остаток от деления

  print(5 + 3 * 4 / 2 - 1);
  print((5 + 3) * 4 / (2 - 1));

  int x = 10;
  print(x);
  x += 5; // x = x + 5;
  print(x);

  x++; // x = x + 1; // Инкремент
  print(x);

  x--; // x = x - 1; // Декремент
  print(x);

  // Особенности работы с типами данных

  var myVariable = 'I am a string';
  print(myVariable.toUpperCase());

  var number = 43;
  print(number + 7);
  // number = 'Five'; // Ошибка: нельзя присвоить строку переменной типа int

  final String country = 'USA'; // Константа, значение нельзя изменить
  // country = 'Canada'; // Ошибка: нельзя изменить значение final переменной
  print(country);

  final pi = 3.14159;
  print(pi);

  const int daysInWeek = 7; // Компиляционная константа
  final myNameInCapitals = myName.toUpperCase();


  dynamic variable = 'I am dynamic'; // Тип dynamic позволяет изменять тип значения
  print(variable); // Вывод: I am dynamic
  variable = 100; // Теперь переменная содержит целое число
  print(variable); // Вывод: 100

  // var -> значение может изменяться и тип определяется автоматически
  // final -> значение не может изменяться после инициализации, тип можно указать
  // const -> значение не может изменяться и должно быть известно на этапе компиляции
  // dynamic -> значение и тип могут изменяться в процессе выполнения программы

  String? city; // Переменная, которая может быть null
  print(city);
}
