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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      )),
    );
  }
}
