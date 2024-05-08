import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/note_model1.dart';

final noteProvider =
    StateNotifierProvider<NoteProvider, List<Note>>((ref) => NoteProvider([]));

class NoteProvider extends StateNotifier<List<Note>> {
  NoteProvider(super._state);
  void add(Note note) {
    state = [...state, note];
  }

  void delete(Note note) {
    state.remove(note);
    state = [...state, note];
  }

  void update(Note note) {}
}

List<Note> note = [Note(title: '', id: DateTime.now().toString())];
