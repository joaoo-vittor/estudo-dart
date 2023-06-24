void main() {
  
  /*
  Operadores Aritimeticos ( + - * / ~/ % )
  Incremento ( += ++ )
  Decremento ( -= -- )
  Assignação ( = ?? )
  */ 
  num numero = 10;
  num numero2 = 10;

  print(7 ~/ 2); // retorna a parte inteira da divisão

  print(numero++); // After
  print(numero);
  print(++numero); // Before

  print(--numero2);

  // ignore: prefer_typing_uninitialized_variables
  var a, b, c, d;
  a ??= ++numero; // a recebe o incremento se for
  print(a);

  b = 1;
  c = d ?? b;

  print(c);

  // ignore: prefer_typing_uninitialized_variables
  var name;
  print('name: ${name ?? 'Joao Vitor'}\n');

}
