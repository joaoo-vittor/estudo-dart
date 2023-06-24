import 'dart:collection';

void main(List<String> args) {

  Queue<int> queue = Queue();
  print(queue.runtimeType);

  queue.add(1);
  queue.add(1);
  queue.addAll([24, 28]);

  print(queue);

  queue.removeLast();

  print(queue);

}
