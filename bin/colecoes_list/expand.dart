void main(List<String> args) {

  var lista = [
    [1, 2],
    [3, 4]
  ];

  print(lista);

  print('');

  List<dynamic> listaFlat = lista.expand((e) => e).toList();
  List<dynamic> listaDuplicada = listaFlat.expand((e) => [e, e]).toList();

  print(listaFlat);
  print(listaDuplicada);

  List<num> numeros = [1, 2.5, 5, 7.25, 10];
  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];

  List<dynamic> listaDinamica = [1, 5, 10] + [2, 7];
  print(listaDinamica);
  print(listaDinamica = [...inteiros, ...doubles]);
  print('');
  print(listaDinamica = [...[], ...inteiros, if (doubles is List<double>) ...doubles]);

  print([for(var numero in numeros) numero + 1]);


}
