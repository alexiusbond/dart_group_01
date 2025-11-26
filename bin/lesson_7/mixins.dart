// Миксин - набор готовых методов, которые можно "вмешать" в класс
// с помощью ключевого слова with
// Миксины не могут иметь конструкторы и не могут быть инстанцированы напрямую
mixin Jump{
  void jump() {
    print('Jumping high!');
  }   
}

mixin Fly{
  void fly(String title) {
    print('$title is flying in the sky!');
  }  
}