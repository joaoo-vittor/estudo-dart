import 'dart:math';

///
/// Atributos ou variaveis com underline são privados Ex.: _name;
///

class Usuario {
  bool alteracao = false;
  String name;
  String _password;

  Usuario(this.name, this._password);

  String get password {
    return _password;
  }

  set password(String password) {
    if (alteracao) {
      _password = password;
      print('Sucesso: Senha Alterada!');
    } else {
      print('Error: Acesso Negado!');
    }
  }

}

class Conta {
  bool alteracao = false;

  int? _numeroConta;
  final String _name;
  double _saldo = 0;
  final double _limite = 500;

  Conta(this._name) {
    _numeroConta = Random().nextInt(9999);
  }

  double get saldo => _saldo;
  set saldo(double value) {
    _saldo = value;
  }

  pr() {
    print('nome: $_name num. conta: $_numeroConta saldo: $_saldo limite: $_limite');
  }

}

void main() {
  var usuario = Usuario('Joao', 'abc123');

  // Operados em cascata
  usuario
    ..password = '123456'
    ..alteracao = true
    ..password = '123456';

  print(usuario.password);

  print('----------------');

  var conta = Conta('Joao');

  // conta.

  conta.pr();
}
