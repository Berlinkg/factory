class Area {
  final double length;
  final double weigth;
  final double area;

  //inittiolazer
  const Area(this.length, this.weigth) : area = length * weigth;
}

//void
void main() {
  var ar = Area(10, 20);
  print(ar.area);
  var a2 = Area(-10, 20);
  print(a2.area);
}
