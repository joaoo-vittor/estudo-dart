void main(List<String> args) {

  var count = 1;

  while (count <= 5) {
    print(count);
    count++;
  }

  print('------');

  count = 4;
  do {
    print(count);
    count++;
  } while(count <= 4);

  print('------');

  count = 1;
  do {
    print(count);
    count++;
    if (count == 3) break;
  } while(count <= 5);

}