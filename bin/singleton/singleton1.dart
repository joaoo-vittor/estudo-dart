class PessoaStatic {
  static final PessoaStatic instance = PessoaStatic.getInstance();
  String? name;

  PessoaStatic.getInstance();
}

void main(List<String> args) {
  print(PessoaStatic.instance.name);
  PessoaStatic.instance.name = 'Joao';
  print(PessoaStatic.instance.name);

  var p1 = PessoaStatic.instance;
  var p2 = PessoaStatic.instance;

  p1.name = 'Sophie';

  print(PessoaStatic.instance.name);

  p2.name = 'Joao';

  print(PessoaStatic.instance.name);
  print(identical(p1, p2));
  print(p2 == PessoaStatic.instance);

}
