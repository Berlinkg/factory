class Person {
  // final fields
  final String name;

  // private constructor
  Person._internal(this.name);

  // static _cache field
  static final Map<String, Person> _cache = <String, Person>{};

  // factory constructor
  factory Person(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    } else {
      final person = Person._internal(name);
      _cache[name] = person;
      return person;
    }
  }
}

void main() {
  final person1 = Person('John');
  final person2 = Person('Harry');
  final person3 = Person('John');

  // hashcode of person1 and person3 are same
  print("${person1.name}  ${person1.hashCode}");
  print(" ${person2.name}  ${person2.hashCode}");
  print("${person3.name} ${person3.hashCode}");
}
