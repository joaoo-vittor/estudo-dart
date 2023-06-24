import 'dart:math';

class Calculo {
  double pi = 3.14;
  static double piStatic = 3.14;

  double areaCirculo(double raio) {
    return pi * pow(raio, 2);
  }

  static double areaCirculoStatic(double raio) {
    return piStatic * pow(raio, 2);
  }
}

void main() {

  print(Calculo().areaCirculo(3));
  print(Calculo.areaCirculoStatic(3));

}
