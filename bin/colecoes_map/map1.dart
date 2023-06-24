void main(List<String> args) {

  List<String> nomes = ['Joao', 'Sophie'];
  Map<int, dynamic> nomesMap = nomes.asMap();

  print(nomesMap);

  nomesMap.forEach((key, value) => print('$key - $value'));

  Map<String, dynamic> frutas = {};

  frutas['banana'] = 'amarela';
  frutas['banana'] = 'verde';
  frutas['maca'] = 'vermelho';
  frutas['laranja'] = 'laranja';

  print(frutas);

  print(frutas.containsKey('banana'));
  print(frutas.containsValue('azul'));
  print(frutas['azul']);
  print(frutas['banana']);

  frutas.clear();

  print('----------');

  Map<String, dynamic> usuario = Map.from({ 'nome': 'Joao', 'idade': 24, 'peso': 143 });

  usuario.update('nome', (value) => '$value Vitor');
  usuario.update('peso', (value) => 70, ifAbsent: () => 'indefinido'); // ifAbsent: -> se a chave n existe
  print(usuario);
  usuario.removeWhere((key, value) => key == 'peso' && value == 70);
  usuario.update('peso', (value) => 70, ifAbsent: () => 'indefinido');
  usuario.putIfAbsent('altura', () => 1.85);
  usuario.addAll({ 'sexo': 'masculino' });
  print(usuario);
  print(usuario.keys);
  print(usuario.values);

  print('');

  Map<int, dynamic> numeros = { 0: 'zero', 1: 'um', 2: 'dois' };
  print(numeros);
  print(numeros.map((key, value) => MapEntry(key, '${value.toUpperCase()}')));

  for (var value in numeros.values) {
    print(value);
  }

  for (var key in numeros.keys) {
    print(key);
  }

}
