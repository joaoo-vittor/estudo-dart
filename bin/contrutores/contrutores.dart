class Pessoa {
  String? name;
  String? color;
  int? age;
  double tall;

  Pessoa(this.name, { String? color, this.age, this.tall = 1.7 }) {
    this.color = (color == null) ? 'indefinida' : color;
  }

  pr() {
    print('nome: $name color: $color age: $age tall: $tall');
  }
}

class Animal {
  String name;
  String? raca;
  int? age;

  Animal(this.name, [this.raca, this.age = 0]);

  pr() {
    print('name: $name age: $age raca: $raca');
  }
}

class Usuario {
  String username, password;
  String? name, occupation;
  int? age;

  Usuario(this.username, this.password, {this.name, String? occupation, this.age = 0}) {
    name = (name == null) ? 'unkown' : name;
    this.occupation = (occupation == null) ? 'user' : occupation;
  }

  Usuario.admin(this.username, this.password, {this.name}) {
    name = (name == null) ? 'unkown' : name;
    occupation = 'MASTER';
  }

  pr() {
    print('name: $name password: $password name: $name occupation: $occupation, age: $age');
  }

}

void main(List<String> args) {
  var p = Pessoa('Joao');
  p.pr();

  var p2 = Pessoa('Joao', tall: 1.85);
  p2.pr();

  var a = Animal('Max');
  a.pr();

  var u = Usuario('joao', '123123');
  u.pr();

  var uAdm = Usuario.admin('joao', '123123');
  uAdm.pr();

}
