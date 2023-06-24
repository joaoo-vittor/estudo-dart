class PessoaFactory {
  static final PessoaFactory instance = PessoaFactory.getInstance('name');

  String name;

  factory PessoaFactory() => instance;

  PessoaFactory.getInstance(this.name);
}

class PessoaFactory2 {
  static PessoaFactory2? instance;
  String name;

  factory PessoaFactory2({String name = 'indefinido'}) {
    return instance ??= PessoaFactory2.getInstance(name);
  }

  PessoaFactory2.getInstance(this.name);
}

void main(List<String> args) {

  var p1 = PessoaFactory();
  print(p1.name);

  p1.name = 'Joao';
  print(PessoaFactory.instance.name);

  var p2 = PessoaFactory();

  p2.name = 'Sophie';
  print(PessoaFactory.instance.name);

  print('----------------');

  var p3 = PessoaFactory2(name: 'Joao');
  print(p3.name);
  print(PessoaFactory2.instance?.name);

  var p4 = PessoaFactory2(name: 'Sophie');
  PessoaFactory2.instance?.name = 'Sophie';
  print(p4.name);
  print(PessoaFactory2.instance?.name);

}
