import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/todo_model/todomodel1.dart';

final noteProvider =
    StateNotifierProvider<NoteProvider, List<Note>>((ref) => NoteProvider([]));

class NoteProvider extends StateNotifier<List<Note>> {
  NoteProvider(super._state);

  void add(Note note) {
    state.add(note);
    state = [...state];
  }

  void delete(Note note) {
    state.remove(note);
  }
}

List<Note> note = [Note(title: '', id: DateTime.now().toString())];
