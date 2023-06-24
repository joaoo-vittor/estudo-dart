void operadores1() {
  print('Operadores Logicos');

  var verdadeiro = !false;
  print(verdadeiro);

  bool falso = !true;
  print(falso);

  bool teste1 = verdadeiro || verdadeiro;
  bool teste2 = verdadeiro || falso;
  bool teste3 = falso || falso;

  print(teste1);
  print(teste2);
  print(teste3);

  bool teste4 = verdadeiro && verdadeiro;
  bool teste5 = verdadeiro && falso;
  bool teste6 = falso && falso;

  print(teste1);
  print(teste2);
  print(teste3);

  bool operacao = (1 <= 2) && (3 > 2);
  print(operacao);

}