class Person {
  //final fileds
  final String name;

  //privat constractor
  Person.internal(this.name);

  //static cash final

  static final Map<String, Person> _cache = <String, Person>{};

  // factory constractor
  factory Person(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    } else {
      final person = Person.internal(name);
      _cache[name] = person;
      return person;
    }
  }
}

void main() {
  final person1 = Person('argo');
  final person2 = 'argen';
  final person3 = "ar";
  print(person1.name);
}
