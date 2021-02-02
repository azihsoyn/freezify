import 'package:example/todo.dart';

void main() {
  final todo1 = Todo("id", 1, "description");
  print(todo1); // output: Instance of 'Todo'

  final todo2 = todo1.freeze();
  print(
      todo2); // output: FreezedTodo(id: id, number: 1, description: description)
}
