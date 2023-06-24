
void semRetorno() {
  print('OPA');

  void cloujer() {
    print('cloujer');
  }

  void somarValores(int n1, int n2) {
    print('Soma: ${n1+n2}');
  }

  somarValores(2,4);
  cloujer();
}

comRetorno() {

  String saudacao(String name) {
    return 'Olá, $name';
  }

  print(saudacao('João Vitor'));
}

void main(List<String> args) {
  // semRetorno();
  comRetorno();
}
