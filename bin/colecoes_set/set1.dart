import 'dart:collection';

void main(List<String> args) {

  Set<int> setInt = {};
  print(setInt.runtimeType);

  setInt.add(13);
  setInt.add(13);
  setInt.add(25);
  setInt.add(22);

  // setInt.add(null);

  print(setInt);

  setInt.remove(22);

  print(setInt);

  print('---------');

  for (var i = 0; i < setInt.length; i++) {
    print(setInt.elementAt(i));
  }

  print('---------');

  for (var element in setInt) {
    print(element);
  }

  print('---------');

  HashSet<String> hashSet1 = HashSet();
  HashSet<int> hashSet2 = HashSet();

  hashSet1.add('A');
  hashSet1.add('B');
  hashSet1.add('C');
  hashSet1.add('D');
  hashSet1.add('D');

  hashSet2.add(1);
  hashSet2.add(1);
  hashSet2.add(2);
  hashSet2.add(3);

  print(hashSet1);
  print(hashSet2);

  print('---------');

  SplayTreeSet<String> splayTreeSet = SplayTreeSet();

  splayTreeSet.add('info1');
  splayTreeSet.add('info1');
  splayTreeSet.add('info3');
  splayTreeSet.add('info');
  splayTreeSet.add('info2');

  print(splayTreeSet);

  print('----------');

  for (var element in splayTreeSet) {
    print(element);
  }

  print('----------');

}
