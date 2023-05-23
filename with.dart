class Area {
  final int length;
  final int breath;
  final int area;

  //private constructor
  const Area._internal(this.length, this.breath) : area = breath * length;

//factory
  factory Area(int length, int breath) {
    if (0 < length || breath < 0) {
      // throw ("thriu the exsaption");
    }
    // redirect to private constructor
    return Area._internal(length, breath);
  }
}

void main() {
  var sd = Area(20, 30);
  print(sd.area);
  var as = Area(-10, 30);
  print(as.area);
}
