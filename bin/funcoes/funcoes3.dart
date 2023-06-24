funcaoParametros() {

  /// Parametro posicionado
  void exibirDados1(String name, int peso, [double altura = 1.70]) {
    print('Nome: $name peso: $peso altura: $altura');
  }

  void exibirDados2(String name, [int peso = 70, double altura = 0]) {
    print('Nome: $name peso: $peso altura: $altura');
  }

  exibirDados1('João Vitor', 139);
  exibirDados2('João Vitor');

  // Parametros nomeados e default
  void exibirDados3(String name, {int peso = 0, double? altura}) {
    print('Nome: $name peso: $peso altura: ${altura ?? 'Não informada'}');
  }

  exibirDados3('João');
  exibirDados3('João', altura: 1.85);
  exibirDados3('João', altura: 1.85, peso: 149);

  void falar() => print('Opa, galera!');

  /// Funções como parametros
  void saudacao(String name, {Function? funcaoFalar}) {
    print('Olá, eu sou $name');
    /// adding a null check ('!')
    funcaoFalar!();
  }

  saudacao('João Vitor', funcaoFalar: falar);
  saudacao('João Vitor', funcaoFalar: () => print('Essa é uma função anonima!'));

}

void main(List<String> args) {
  funcaoParametros();
}
