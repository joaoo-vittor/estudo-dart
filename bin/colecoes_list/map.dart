void main(List<String> args) {

  List<String> frutas = ['Morango', 'Banana', 'Tomate'];
  List<String> frutasMapeadas = frutas.map((e) => '$e é uma fruta').toList();

  print(frutasMapeadas);

  List<int> inteiros = [1,2,3];
  incrementar(int e) => ++e;
  dobro(int e) => e * 2;

  List<int> inteirosMapeados = inteiros.map(incrementar).map(dobro).toList();
  print(inteirosMapeados);

}
