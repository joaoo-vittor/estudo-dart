void main(List<String> args) {
  
  int age = 24;

  if (age < 14) {
    print('Criança');
  } else if (age >= 14 && age < 18) {
    print('Adolecente');
  } else {
    print('Adulto');
  }

}