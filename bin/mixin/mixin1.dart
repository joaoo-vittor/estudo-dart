abstract class Cidadao {
  String nome;

  Cidadao(this.nome);

  void objetivosPessoais();
  void direitosDeveres() {
    print('Todos cidadao tem direitos e deveres');
  }
}

// INTERFACE

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

// MIXINS

mixin Elegivel on Cidadao {
  bool elegivel = false;
  void prestacaoContas();
}

mixin Conta {
  double saldo = 0;
  double salario = 33000;

  void depositar(double valor) => saldo = valor;
  bool declaracaoRenda() => (saldo / 12) < salario;
}

// CLASSE CONCRETA

class Candidato extends Cidadao with Elegivel, Conta implements Postagem, Presidenciaveis {
  String? objetivo;

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

  @override
  void prestacaoContas() {
    elegivel = super.declaracaoRenda();
    if (elegivel) {
      print('Candidato $nome passou na prestacao de contas\nAutorizado a concorrer nas eleicoes 2022!');
    } else {
      print('Candidato $nome foi barrado na prestacao de constas\nSaldo $saldo excede a renda declarada para Presidencia!');
    }
  }
}

void main(List<String> args) {

  var lula = Candidato('Lula', ideologia: 'Centro-Esquerda', partido: 'PT');

  lula
    ..objetivo = 'Ganhou a eleicao'
    ..objetivosPessoais()
    ..postagem = 'Vou acabar com a corrupcao de Bolsonaro no Brasil!'
    ..escreverPostagem()
    ..ideologiaPolitica()
    ..depositar(395000)
    ..prestacaoContas();

}
