class Person {
  String? address;
  String _name;
  int _age;

  Person(this._name, this._age, [this.address]);

  String get name => _name;
  int get age => _age;

  set age(int newAge) {
    if (newAge >= 0) {
      _age = newAge;
    }
  }
}
