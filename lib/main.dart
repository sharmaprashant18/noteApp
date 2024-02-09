import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todoapp/UI/homepage.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}




// COUNTERAPP
// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int number = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               '$number',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextButton(
//                     onPressed: () {
//                       setState(() {
//                         number++;
//                       });
//                     },
//                     child: Text(
//                       'Increment',
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                     )),
//                 TextButton(
//                     onPressed: () {
//                       setState(() {
//                         number--;
//                       });
//                     },
//                     child: Text(
//                       'Decerement',
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                     ))
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
