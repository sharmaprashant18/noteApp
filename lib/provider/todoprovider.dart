import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/todo_model/todomodel1.dart';

class TodoProvider extends StateNotifier {
  TodoProvider(super.state);
  void addTodo(Todo todo) {}

  void deleteTodo() {}
}
