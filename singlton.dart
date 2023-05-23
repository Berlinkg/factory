//singlton class
class Singelton {
  //sttic farible
  static final Singelton _instance = Singelton._internal();

  //factory constractor
  factory Singelton() {
    return _instance;
  }
  //private constractor
  Singelton._internal();
}

void main() {
  var ss1 = Singelton();
  var ss2 = Singelton();
  print(ss1.hashCode);
  print(ss2.hashCode);
}
