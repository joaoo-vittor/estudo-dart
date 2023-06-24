import 'dart:math';

void main(List<String> args) {

  List<num> array = [0, 2.5, 5, 7.5, 10];
  array.add(12.5);

  // ignore: avoid_function_literals_in_foreach_calls
  array.forEach((element) {
    print(element);
  });

  print('');

  List<int> ints = [1,2,3];
  List<double> doubles = [1.4,2.5,3.9];

  List<num> all = List.from(ints)
    ..addAll(doubles)
    ..shuffle() // -> Mistura os elementos
    ..sort();

  print(all);

  print('');

  List<dynamic> lista = [1,1.4,2.5,3.9];
  lista = all.take(3).skip(1).take(2).toList();
  print(lista);

  print('');

  List<String> listPreenchida = List.filled(2, 'elements');
  List<String> listGerada = List.generate(2, (i) => 'Nome: $i');
  List<double> listPrecos = List.generate(5, (i) => double.parse(((i + 1) * Random().nextDouble()).toStringAsFixed(2)));
  print(listPreenchida);
  print(listGerada);
  print(listPrecos);

  print('');

}
