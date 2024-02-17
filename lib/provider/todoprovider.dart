import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/todo_model/todomodel1.dart';

final noteProvider =
    StateNotifierProvider<NoteProvider, List<Note>>((ref) => NoteProvider([]));

class NoteProvider extends StateNotifier<List<Note>> {
  NoteProvider(super.state);
  addNote(Note note) {
    state.add(note);
    state = [...state];
  }

  deleteNote(Note note) {
    state.remove(note);
    state = [...state];
  }
}

List<Note> note = [Note(title: '', id: DateTime.now().toString())];
