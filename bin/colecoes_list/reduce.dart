void main(List<String> args) {

  List<int> numerosPares = List.generate(6, (index) => index * 2);
  print(numerosPares);

  int resultado = numerosPares.reduce((anterior, atual) => anterior + atual);
  print(resultado);

  print(numerosPares);
  print(numerosPares.reduce((value, current) => (value > current) ? current : value));
  print(numerosPares.reduce((value, current) => (value < current) ? current : value));

}
