class Pessoa {
  String? name;
  int? age;



  Pessoa(
    String this.name,
    int this.age
  );

  void info() {
    print('name: $name, age: $age');
  }
}


void main(List<String> args) {
  var p1 = Pessoa('Joao', 24);
  p1.info();
}
