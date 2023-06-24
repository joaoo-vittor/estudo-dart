abstract class Animal {
  String idade;
  bool? docil;
  late bool coluna;

  Animal.vertebrados(this.idade, {this.docil}) {
    coluna = true;
  }

  Animal.invertebrados(this.idade, {this.docil}) {
    coluna = false;
  }

  void dormir() {
    print('Dorme como um animal!');
  }
}

abstract class Mamiferos extends Animal {
  String sexo;
  String? desenvolvimeto;

  Mamiferos.placentarios(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    desenvolvimeto = 'Placentarios';
  }

  Mamiferos.marsupiais(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    desenvolvimeto = 'Placentarios + Bolsa externa';
  }

  Mamiferos.monotremados(this.sexo, idade, {docil}) : super.vertebrados(idade, docil: docil) {
    desenvolvimeto = 'Ovo';
  }

  void alimentar() {
    print('Se alimenta');
    print('como um ');
  }

  void reproduzir();
}

class Cao extends Mamiferos {
  String nome;
  String raca;

  Cao.domestico(
    this.nome, this.raca, String sexo,
    { String idade = 'indefinida', bool docil = true }
  ) : super.placentarios(sexo, idade, docil: docil);

  Cao.selvagem(
    this.nome, this.raca, String sexo,
    { String idade = 'indefinida', bool docil = false }
  ) : super.placentarios(sexo, idade, docil: docil);

  @override // sobrescreve o metodo de classe herdada (super)
  void dormir() {
    print('Dorme como um cao!');
  }

  @override
  void alimentar() {
    super.alimentar(); // implementa o escopo do metodo herdado (super)
    print('cao!');
  }

  @override
  void reproduzir() {
    print('Reproduz como um cao!');
  }

  void acao() {
    print('Late como um cao!');
  }

  @override
  String toString() {
    return 'Instance of $runtimeType nome: $nome';
  }
}

void main(List<String> args) {
  var cao = Cao.domestico('Max', 'Bla', 'Masc');

  print('nome: ${cao.nome} raca: ${cao.raca} sexo: ${cao.sexo} idade: ${cao.idade} docil: ${cao.docil}');
  print('desenvolvimeto: ${cao.desenvolvimeto} tipo: ${cao.coluna ? 'Vertebrado' : 'Invertebrado'}');

  cao
    ..dormir()
    ..alimentar()
    ..reproduzir()
    ..acao();

  print(cao);

}
