Future<String>? status({int tempo = 0}) {
  try {
    if (tempo < 4) throw Exception('Tempo insuficiente para o Load programado!');
    return Future.delayed(Duration(seconds: tempo), () => 'Primeira Tarefa finalizada!\n');
  } catch (e) {
    print(e);
    return null;
  }
}

Future<String> tarefa({int tempo = 1}) async {
  var msg = await status(tempo: tempo);
  return 'Status: $msg';
}

void contagem({int segundos = 3}) {
  print('Carregando...');

  for (var i = 1; i <= segundos; i++) {
    Future.delayed(Duration(seconds: i), () {
      print('${i * 33}%');
      if (i == segundos) print('Concluido!');
    });
  }
}

main(List<String> args) async {

  contagem(segundos: 3); // sync function

  print(await tarefa(tempo: 4)); // async function
  print(await tarefa(tempo: 3)); // async function

}
