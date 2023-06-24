void main(List<String> args) {
  
  String somaOuSub = '-';
  double n1 = 10;
  double n2 = 15;

  switch (somaOuSub) {
    case '+':
      print('Result: ${n1+n2}');
      break;
    case '-':
      print('Result: ${n1-n2}');
      break;
    default:
      print('Opecacao invalida!');
  }

}