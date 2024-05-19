import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/model/note_model1.dart';
import 'package:get/get.dart';
import 'package:todoapp/provider/noteprovider.dart';

class EditPage extends StatelessWidget {
  final Note note;
  final int index;
  EditPage(this.note, this.index);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Consumer(
            builder: (context, ref, child) {
              return Container(
                  child: TextFormField(
                initialValue: note.title,
                decoration: InputDecoration(hintText: 'Edit '),
                onFieldSubmitted: (value) {
                  if (value.isEmpty) {
                    Get.defaultDialog(
                        title: 'Required',
                        content: Text('Add Something'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Get.back(); //Helps to go back after clicking the text button
                              },
                              child: Text('Confirm'))
                        ]);
                  } else {
                    final newNote = Note(title: value, id: note.id);
                    ref.read(noteProvider.notifier).update(note, index);
                  }
                },
              ));
            },
          )),
    ));
  }
}
