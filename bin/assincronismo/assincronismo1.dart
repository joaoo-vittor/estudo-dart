Future<String> status({int tempo = 0}) {
  return Future.delayed(Duration(seconds: tempo), () => 'Primeira Tarefa finalizada!\n');
}

String tarefa({int tempo = 1}) {
  var msg = status(tempo: tempo);
  return 'Status: $msg';
}

void novaTarefa({int tempo = 1}) {
  Future.delayed(
    Duration(seconds: tempo),
    () => print('Status: Segunda Tarefa finalizada!\n')
  );
}

excecao({int tempo = 1}) => Future.delayed(
    Duration(seconds: tempo),
    () => throw Exception('Erro intencional')
  );

void contagem({int segundos = 3}) {
  print('Carregando...');

  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('Concluido!');
    });
  }
}

void main(List<String> args) {

  print(tarefa(tempo: 4));

  novaTarefa(tempo: 4);

  excecao(tempo: 6);

  contagem();

}
