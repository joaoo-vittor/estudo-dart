abstract class Artista {
  void acao() {
    print('Performista...');
  }
}

// MIXIN

mixin Cantar on Artista {
  @override
  void acao() {
    print('Cantar...');
  }
}

mixin Dancarino {
  void acao() {
    print('Dançar...');
  }
}

// INTERFACE

abstract class Acao {
  void executar();
}

class Musico extends Artista with Dancarino, Cantar  implements Acao {

  @override
  void acao() => print('Compor');

  @override
  void executar() {
    super.acao();
    acao();
  }

}

class MC with Dancarino implements Acao {
  @override
  void acao() => print('Mixa... bota o batidao');

  @override
  void executar() {
    super.acao();
    acao();
  }
}

void main(List<String> args) {

  Musico musico = Musico();
  musico.executar();

  print('');

  MC mc = MC();
  mc.executar();

}
