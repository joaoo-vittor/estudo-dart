///
/// bla
///

funcaoArrow() {

  String myPrint() => 'Hello World';
  String soma(int a, int b) => '${a+b}';
  String verificarMaiorIdade(String name, int idade) =>
    idade >= 18
    ? '$name é maior de idade!'
    : '$name não é maior de idade!';

  print(myPrint());
  print(soma(2,3));
  print(verificarMaiorIdade('João vitor', 24));

}

void main(List<String> args) {
  funcaoArrow();
}
