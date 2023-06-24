void variaveis1() {
  print("- Variaveis");

  var valorA = 10;
  var valorB = 4;
  var valorC = 4.3;
  double resultado;
  resultado = valorA + valorB + valorC;

  print(resultado);

  var salario = 1000, descontos = 120;
  var conta = salario - descontos;
  print(conta);

  var numero = 3 + ((2*4) + (10/5));
  print(numero);
  print('${1+2}');

  print('');

  print(
    "Concatenar "
    "String "
    "é muito simples"
  );

  var texto1 = "\nJoao Vitor ";
  var texto2 = 'Vai ';
  var texto3 = '''ser muito bem sucedido''';

  var frase = texto1 + texto2 + texto3;
  print(frase);

  var falso = false;
  var vardadeiro = true;

  print('verdadeiro = $vardadeiro');
  print('falso = $falso');
  print(''.runtimeType);

  const pi = 3.14;

  print('PI $pi');

  String nome = 'Joao';
  int idade = 24;
  double altura = 1.83;
  bool adulto = true;

  print(nome);
  print(nome.length);
  print(idade);
  print(altura);
  print(adulto);

  dynamic variavelDinamica = 2.0;

  print(variavelDinamica);
  variavelDinamica = 'dois';
  print(variavelDinamica);

}