import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:todoapp/model/note_model1.dart';
import 'package:todoapp/provider/noteprovider.dart';

class EditPage extends StatelessWidget {
  final Note note;
  final int index;
  EditPage(this.note, this.index);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Consumer(builder: (context, ref, child) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: TextFormField(
              initialValue: note.title,
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

                  // confirm: TextButton(
                  //     onPressed: () {
                  //       // Get.to(() => NextPage()); In this way by clicking it can go to another page
                  //     },
                  //     child: Text('Confirm')));
                } else {
                  // final newNote = Note(title: value, id: note.id);
                  // ref.read(noteProvider.notifier).update(newNote);
                  final newNote = Note(title: value, id: note.id);
                  ref.read(noteProvider.notifier).update(newNote, index);
                }
              },
            ),
          ),
        );
      })),
    );
  }
}
