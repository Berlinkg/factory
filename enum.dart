//enum
// import 'exam.dart';

enum ShapTayp { circle, rectangle }

//abstract class Shape
abstract class Shape {
  //factory constractor
  factory Shape(ShapTayp type) {
    switch (type) {
      case ShapTayp.circle:
        return Circle();
      case ShapTayp.rectangle:
        return Rectangle();
      default:
        throw ('throw retorn typ');
    }
  }
  //metod
  void draw();
}

class Circle implements Shape {
  //implement draw metot
  @override
  void draw() {
    print('print a drow metot');
  }
}

class Rectangle extends Circle {
  //implement metot
  @override
  void draw() {
    print('drowing rectangle');
  }
}

//main metot
void main() {
//great shape metot
  var sf = Shape(ShapTayp.circle);
  print(sf);
  var as = Shape(ShapTayp.rectangle);
  print(as);
}
