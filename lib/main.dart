// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:get/get.dart';

// PROVIDER
// void main() {
//   runApp(ProviderScope(child: Home()));
// }

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Consumer(builder: (context, ref, child) {
//           // final number = ref.watch(sampleProvider).number;
//           final number = ref.watch(sampleProvider).number;
//           return Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 '$number',
//                 style: TextStyle(fontSize: 30),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextButton(
//                       onPressed: () {
//                         ref.read(sampleProvider).addition();
//                       },
//                       child: Text('Increase')),
//                   TextButton(
//                       onPressed: () {
//                         ref.read(sampleProvider).Decrease();
//                       },
//                       child: Text('Decrease')),
//                 ],
//               ),
//             ],
//           );
//         }),
//       ),
//     );
//   }
// }

// // final sampleProvider = Provider((ref) => CounterProvide());

// // class CounterProvide {
// //   int number = 0;
// //   void increment() {
// //     number++;
// //   }

// //   void decrement() {
// //     number--;
// //   }
// // }

// CHANGENOTIFIER&CHANGENOTIFIERPROVIDER

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(Home());
// }

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Consumer(builder: (context, ref, child) {
//           final number = ref.watch(SampleCounterApp).number;
//           return Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('$number'),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextButton(
//                       onPressed: () {
//                         ref.read(SampleCounterApp).increase();
//                       },
//                       child: Text('Increase')),
//                   TextButton(
//                       onPressed: () {
//                         ref.read(SampleCounterApp).decrease();
//                       },
//                       child: Text('Decrease'))
//                 ],
//               )
//             ],
//           );
//         }),
//       ),
//     );
//   }
// }

// final SampleCounterApp = ChangeNotifierProvider((ref) => CounterApp());

// class CounterApp extends ChangeNotifier {
//   int number = 0;
//   void increase() {
//     number++;
//     notifyListeners();
//   }

//   void decrease() {
//     number--;
//     notifyListeners();
//   }
// }
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
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
