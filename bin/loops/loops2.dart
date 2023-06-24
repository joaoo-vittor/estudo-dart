void main(List<String> args) {

  num count = 5;

  for (var i = 1; i <= count; i++) {
    print(i);
  }

  print('--------');

  dynamic frutas = ['Pera', 'Maçã', 'Banana', 'Laranja'];

  for (var fruta in frutas) {
    print(fruta);
  }

}
