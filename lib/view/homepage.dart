// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:todoapp/UI/search.dart';
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       // backgroundColor: Colors.black,
//       appBar: AppBar(
//         // backgroundColor: Colors.black,
//         elevation: 0,
//         toolbarHeight: height * 0.08,
//         title: Center(
//           child: Text(
//             'Index',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               // color: Colors.white
//             ),
//           ),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {
//               Get.to(SearchPage());
//             },
//             icon: Icon(Icons.person_2_outlined),
//             iconSize: 30,
//           )
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: [
//             SizedBox(
//                 height: height * .09,
//                 child: DrawerHeader(
//                     child: Text(
//                   'Settings',
//                 ))),
//             ListTile(
//               title: Text(
//                 'Change App Color                              >',
//                 style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: Text(
//                 'Change app typography                     >',
//                 style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
//               ),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//                 title: Text(
//                   'Change app language                         >',
//                   style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
//                 ),
//                 onTap: () {
//                   Navigator.pop(context);
//                 }),
//             ListTile(
//                 title: Text(
//                   'Import from Google calendar             >',
//                   style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
//                 ),
//                 onTap: () {
//                   Navigator.pop(context);
//                 }),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         clipBehavior: Clip.antiAlias,
//         shape: CircularNotchedRectangle(),
//         elevation: 0,
//         color: Colors.white,
//         child: BottomNavigationBar(
//             currentIndex: 0,
//             elevation: 0,
//             type: BottomNavigationBarType.fixed,
//             fixedColor: Colors.pink,
//             items: <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                   icon: InkWell(child: Icon(Icons.home)), label: 'Home'),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.calendar_month_outlined), label: 'Calender'),
//               BottomNavigationBarItem(
//                   icon: Icon(Icons.watch_later_outlined), label: 'Focus'),
//             ]),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Get.to(SearchPage());
//         },
//         child: Icon(Icons.add),
//       ),
//       body: Container(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:todoapp/model/note_model1.dart';
import 'package:todoapp/provider/noteprovider.dart';

class HomePage extends StatelessWidget {
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          final noteData = ref.watch(noteProvider);
          return SafeArea(
              child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    controller:
                        textController, // textController given below the Stless is called in the controller
                    decoration: InputDecoration(
                        hintText: 'Add Some',
                        hintStyle: TextStyle(fontSize: 20)),
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
                        final newNote =
                            Note(title: value, id: DateTime.now().toString());
                        ref.read(noteProvider.notifier).add(newNote);
                        textController
                            .clear(); //clear the text after clicking done from the search bar and it called from the TextFormfield
                      }
                    },
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                    child: ListView.builder(
                  itemCount: noteData.length,
                  itemBuilder: (context, index) {
                    final notes = noteData[index];
                    return ListTile(
                      title: Text(notes.title),
                      leading: Icon(Icons.add),
                      subtitle: Text(
                          // come below the main title in small
                          notes.id.substring(0, 11)),
                      //Substring helps to give the range of the subtitle
                      trailing: Container(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.edit_note)),
                            IconButton(
                                onPressed: () {
                                  Get.defaultDialog(
                                      title: 'Are you sure?',
                                      content: Text('You want to delete '),
                                      actions: [
                                        Column(
                                          children: [
                                            TextButton(
                                                onPressed: () {},
                                                child: Text('Yes')),
                                            TextButton(
                                                onPressed: () {
                                                  Get.back();
                                                },
                                                child: Text('No'))
                                          ],
                                        )
                                      ]);
                                },
                                icon: Icon(Icons.delete)),
                          ],
                        ),
                      ),
                    );
                  },
                ))
              ],
            ),
          ));
        },
      ),
    );
  }
}
