void main(List<String> args) {

  List<Map<String, dynamic>> carrinho = [
    {'nome': 'Borracha', 'preco': 3.45},
    {'nome': 'Caderno', 'preco': 13.9},
    {'nome': 'KitLapis', 'preco': 41.22},
    {'nome': 'Caneta', 'preco': 7.5},
  ];

  porcentagem(desconto) => (valor) => desconto * valor['preco'];
  moeda(e) => 'RS ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';

  List<String> precos1 = carrinho.map(porcentagem(.9)).map(moeda).toList();
  List<String> precos2 = carrinho.map((e) => e.update('preco', (value) => value * .9)).map(moeda).toList();
  print(precos1);
  print(precos2);

  String precoMedio = (carrinho
    .map((e) => e['preco'])
    .reduce((previusValue, currentValue) => previusValue + currentValue)
    / carrinho.length).toStringAsFixed(2);

  print(precoMedio);

  // for (var el in carrinho) {
  //   print(el);
  // }

}
