///
/// Uma Closure ocorre quando uma funcao é declarada dentro do corpo de outra funcao!
/// Podendo retornar as variaveis locais e da função superior
///

funcaoClosures() {
  void soudacao(String name) {
    mensagem(complemento) => print('Ola, $name $complemento');
    mensagem('Seja bem vindo!');
  }

  print(soudacao);
  soudacao('Joao vitor');

  Function somar(int a) {
    return (b) {
      return a + b;
    };
  }

  var somarDez = somar(10);
  // print(somarDez.call(5));
  print(somarDez(5));

}

void main(List<String> args) {
  funcaoClosures();
}
