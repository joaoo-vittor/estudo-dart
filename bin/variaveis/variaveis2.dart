void variaveis2() {

  num pi = 3.14;

  print(pi.floor());
  print(pi.round());
  print(pi.ceil());
  print(pi.clamp(3, 3.1));
  print(pi.compareTo(3));
  print(pi.remainder(3));
  print(pi.toInt());
  print(pi.toString());
  print(pi.toStringAsFixed(1));
  print(pi.truncate());
  print(pi.isNegative);
  print(pi.isInfinite);
  print((pi/0).isFinite);
  print(12.gcd(16));
  print(12.toDouble());
  print('1'.padLeft(5, '0'));
  
  print('');
  
  String name = 'Joao';
  String fullName = '\t Joao Vitor Silva';

  print(name.toLowerCase());
  print(name.toUpperCase());
  print(fullName.trim());
  print(fullName.split(' '));
  print(name.split(''));
  print(name.substring(1, 3));
  print(name.startsWith('J'));
  print(name.replaceAll('a', '@'));
  print(name.replaceFirst('o', '0'));
  print(name.contains('a'));
  print(name.indexOf('a'));
  print(name.endsWith('o'));
  print(name.compareTo(name));
  print(name.compareTo('Jo'));
  print(name.compareTo('Abril'));
  print(''.isEmpty);
  print(double.parse('12.44'));
  print('1' is String);
  print(int.parse('12') is int);
  print(name.lastIndexOf('o'));

  num numero = 12.21;
  print(numero is double);
  print(numero is !double);

}