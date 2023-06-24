abstract class Cidadao {
  String nome;

  Cidadao(this.nome);

  void objetivosPessoais();
  void direitosDeveres() {
    print('Todos cidadao tem direitos e deveres');
  }
}

abstract class Presidenciaveis {
  String? partido;
  String? ideologia;

  void ideologiaPolitica();
}

class Postagem {
  String? postagem;

  void escreverPostagem() {
    print('');
  }
}

class Candidato extends Cidadao implements Postagem, Presidenciaveis {
  late String objetivo;

  Candidato(super.nome, { this.ideologia, this.partido }) {
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  // INTERFACE

  @override
  String? postagem;

  @override
  void escreverPostagem() {
    print('Postagem de $nome no facebook: $postagem');
  }

  @override
  String? partido;
  @override
  String? ideologia;

  @override
  void ideologiaPolitica() {
    print('$nome e candidato com ideologia de $ideologia pelo partido $partido');
  }

}

void main(List<String> args) {

  var lula = Candidato('Lula', ideologia: 'Centro-Esquerda', partido: 'PT');

  lula
    ..objetivo = 'Ganhou a eleicao'
    ..objetivosPessoais()
    ..postagem = 'Vou acabar com a corrupcao de Bolsonaro no Brasil!'
    ..escreverPostagem()
    ..ideologiaPolitica();

}
