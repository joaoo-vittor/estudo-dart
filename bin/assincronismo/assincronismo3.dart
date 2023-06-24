Future<String> status({int tempo = 0}) {
  return Future.delayed(Duration(seconds: tempo), () => Future.error('Erro intencinal'));
  // return Future.delayed(Duration(seconds: tempo), () => 'Primeira Tarefa finalizada!\n');
}

Future<String> tarefa({int tempo = 1}) {
  return status(tempo: tempo)
    .then((value) {
      return 'Status: $value';
    })
    .catchError((error) {
        print('catchError: $error');
        return error;
      },
      test: (error) => error is Future
    )
    .whenComplete(() {
      print('Future Completa!');
    });
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

void main(List<String> args) {

  contagem(segundos: 3);

  tarefa(tempo: 4)
    .then((value) => {
      print(value)
    });

}
