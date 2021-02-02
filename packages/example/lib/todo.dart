import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:freezify_annotation/freezify_annotation.dart';

part 'todo.freezed.dart';
part "todo.freezify.dart";

class Todo {
  final String id;
  final int number;
  final String description;

  const Todo(this.id, this.number, this.description);

  void printHoge() {
    print("hoge");
  }
}

@freezify
extension ExtendedTodo on Todo {
  FreezedTodo freeze() => FreezedTodo._$From(this);
}
