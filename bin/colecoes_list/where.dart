void main(List<String> args) {

  List<int> idades = [36, 12, 18, 31, 17, 23];
  print(idades.whereType<int>());

  List<int> adultos = idades.where((element) => element > 17).toList();
  print(adultos);

  var crianca1 = idades.singleWhere((element) => element < 12, orElse: () => 0);
  print(crianca1);

  var crianca2 = idades.singleWhere((element) => element <= 12, orElse: () => 0);
  print(crianca2);

  int menor = idades.lastWhere((element) => element.toString().startsWith('1'), orElse: () => 0);
  print(menor);

}
