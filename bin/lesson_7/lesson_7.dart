import 'animals.dart';
import 'interfeces.dart';
import 'transports.dart';
import 'mixins.dart';

void main() {
  final cat = Cat('Whiskers', 2, 'Black');

  List<Drawable> drawables = [
    cat,
    Parrot('Polly', 2),
    Snake('Shammy', 6),
    Cat('Tom', 3, 'Gray'),
    Car(),
    Plane(),
  ];

  for (var drawable in drawables) {
    drawObject(drawable);
    if (drawable is Animal) {
      drawable.makeSound();
      drawable.sleep();
    }
    if (drawable is Fly) {
      (drawable as Fly).fly(drawable.runtimeType.toString());
    }
    if (drawable is Playable) {
      (drawable as Playable).play();
    }
     if (drawable is Jump) {
      (drawable as Jump).jump();
    }
  }
}

void drawObject(Drawable d) {
  d.draw();
  print(d.draw3D('Plastic'));
}
