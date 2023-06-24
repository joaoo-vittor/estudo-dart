class Animal {
  String idade;
  bool? docil;

  Animal(this.idade, {this.docil});

  void dormir() {
    print('Dorme como um animal!');
  }
}

class Mamiferos extends Animal {
  String sexo;

  Mamiferos(this.sexo, idade, docil) : super(idade, docil: docil);

  void alimentar() {
    print('Se alimenta como um mamifero!');
  }
}

class Cao extends Mamiferos {
  String nome;
  String raca;

  Cao(
    this.nome,
    this.raca,
    String sexo,
    { String idade = 'indefinida', bool docil = false }
  ) : super(sexo, idade, docil);

  void acao() {
    print('Late como um cao!');
  }
}

void main(List<String> args) {

  var cao = Cao('Max', 'Bla', 'Masc');

  print('nome: ${cao.nome} raca: ${cao.raca} sexo: ${cao.sexo} idade: ${cao.idade} docil: ${cao.docil}');

  cao
    ..dormir()
    ..alimentar()
    ..acao();



}
