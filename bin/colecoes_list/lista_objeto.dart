import 'dart:math';

class Pessoa {
  String nome, sobrenome;
  int? identidade;

  Pessoa(this.nome, this.sobrenome, {this.identidade}) {
    identidade = (identidade == null) ? Random().nextInt(9999999) : identidade;
  }
}

void main(List<String> args) {

  Pessoa p1 = Pessoa('Jose', 'Silva');
  Pessoa p2 = Pessoa('Maria', 'Silva');

  List<Pessoa> pessoas = List.from([p1, p2]);

  for (var pessoa in pessoas) {
    print('nome: ${pessoa.nome} sobrenome: ${pessoa.nome} identidade: ${pessoa.identidade}');
  }

}
