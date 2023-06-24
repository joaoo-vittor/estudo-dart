///
/// * Const
///   - Inicializada em tempo de compilação, deve ser declarada com valor constante
///   - Ao nivel de classes deve ser statica para ficar disponivel na classe
///   - Em coleções const todo o conteudo deve ser constante
/// * Objeto imutavel
///   - O Construtor deve ser contante
///   - As variaveis devem ser final ou static const
///

class Brasil {
  final double lat;
  final double lng;
  static const String capital = 'Brasilia';
  static const estados = ['PB', 'PE', 'RN', '...'];

  const Brasil(this.lat, this.lng);
}

void main(List<String> args) {

  const gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo;
  print('Velocidade maxima: $velocidade m/s');

  final numeros1 = [1,2,3];
  numeros1.add(4);
  print(numeros1);

  const numeros2 = [1,2,3];
  // numeros2.add(5);
  print(numeros2);

  var b = Brasil(-15.79, -47.88);
  print('Objeto: $b');

}
