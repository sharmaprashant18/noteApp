// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:todoapp/todo_model/todomodel1.dart';

// final todoProvider =
//     StateNotifierProvider<TodoProvider, List>((ref) => TodoProvider([]));

// class TodoProvider extends StateNotifier<List<Todo>> {
//   TodoProvider(super.state);
//   add(Todo todos) {
//     state.add(todos);
//   }

//   delete(Todo todos) {
//     state.remove(todos);
//   }
// }

// // List<Todo> todo = [Todo(title: '', id: DateTime.now().toString())];
// STATENOTIFIERPROVIDER
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/todo_model/todomodel1.dart';

final todoProvider =
    StateNotifierProvider<TodoProvider, List>((ref) => TodoProvider([]));

class TodoProvider extends StateNotifier<List<Todo>> {
  TodoProvider(super.state);

  add(Todo todo) {
    state.add(todo);
  }

  delete(Todo todo) {
    state.remove(todo);
  }
}

List<Todo> todo = [Todo(title: '', id: DateTime.now().toString())];
