import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'UI/assignment_UI.dart';
import 'UI/list_view_lecture.dart';
import 'UI/login_screen_view.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override // built in function
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen());
  }
}
//----------------------------------------------END------------------------------------

// class PaddingAndMargin extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Padding and Margin"),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(10),
//         child: Stack(
//           children: <Widget>[
//             Positioned(
//               top: 30,
//               left: 30,
//               height: 250,
//               width: 250,
//               child: Container(
//                 width: 150,
//                 height: 150,
//                 color: Colors.green[300],
//                 child: Text(
//                   'Green',
//                   style: TextStyle(color: Colors.white, fontSize: 20),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 70,
//               left: 60,
//               width: 250,
//               height: 250,
//               child: Container(
//                 width: 150,
//                 height: 150,
//                 color: Colors.red[400],
//                 child: Text(
//                   'Red',
//                   style: TextStyle(color: Colors.white, fontSize: 20),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 130,
//               left: 30,
//               width: 250,
//               height: 250,
//               child: Container(
//                 width: 80,
//                 height: 80,
//                 color: Colors.purple[300],
//                 child: Text(
//                   'Purple',
//                   style: TextStyle(color: Colors.white, fontSize: 20),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       // Container(
//       //   margin: EdgeInsets.only(left: 100, top: 500),
//       //   padding: EdgeInsets.only(top: 30, left: 30),
//       //   width: 200,
//       //   height: 100,
//       //   decoration: BoxDecoration(
//       //     color: Colors.green,
//       //     border: Border.all(),
//       //   ),
//       //   child: Text("Hello",
//       //       style: TextStyle(
//       //         fontSize: 30,
//       //       )),
//       // )
//     );
//   }
// }

// class DialogLecture extends StatefulWidget {
//   const DialogLecture({Key? key}) : super(key: key);

//   @override
//   DialogLectureState createState() => DialogLectureState();
// }

// class DialogLectureState extends State<DialogLecture> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Dialog Lecture"),
//       ),
//       body: Center(
//           child: ElevatedButton(
//         onPressed: () {
//           // const snackdemo = SnackBar(
//           //   content: Text('Hello this is snackbar'),
//           //   backgroundColor: Colors.green,
//           //   behavior: SnackBarBehavior.floating,
//           //   margin: EdgeInsets.all(4),
//           // );
//           // ScaffoldMessenger.of(context).showSnackBar(snackdemo);
//           Fluttertoast.showToast(
//               msg: 'This is Toast Testing',
//               backgroundColor: Colors.green,
//               gravity: ToastGravity.TOP,
//               toastLength: Toast.LENGTH_LONG);
//         },
//         child: Text("Dialog"),
//       )),
//     );
//   }

//   Future<void> _showSimpleDialog() async {
//     await showDialog<void>(
//         context: context,
//         builder: (BuildContext context) {
//           return SimpleDialog(
//             title: const Text('Select Booking Type'),
//             children: <Widget>[
//               SimpleDialogOption(
//                 onPressed: () {
//                   Navigator.of(context).pop(); //exit
//                 },
//                 child: const Text('Eco'),
//               ),
//               SimpleDialogOption(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: const Text('Business'),
//               ),
//             ],
//           );
//         });
//   }

//   Future<void> _showAlertDialog() async {
//     return showDialog<void>(
//       context: context,
//       // barrierDismissible: false, // user must tap button!
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Cancel booking'),
//           content: SingleChildScrollView(
//             child: ListBody(
//               children: const <Widget>[
//                 Text('Are you sure want to cancel booking?'),
//               ],
//             ),
//           ),
//           actions: <Widget>[
//             TextButton(
//               child: const Text('No'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               child: const Text('Yes'),
//               onPressed: () {
//                 //canceling process
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
// class CommonWidget extends StatefulWidget {
//   @override
//   CommonWidgetState createState() => CommonWidgetState();
// }

// class CommonWidgetState extends State<CommonWidget> {
//   bool checkBoxValue = false;
//   String _selectedGender = 'male';
//   double sliderValue = 1;
//   bool isSwitch = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Common Widget"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             // Row(
//             //   children: [
//             //     Checkbox(
//             //       activeColor: Colors.grey,
//             //       value: checkBoxValue,
//             //       checkColor: Colors.red,
//             //       fillColor: MaterialStateProperty.all(Colors.green),
//             //       onChanged: (value) {
//             //         setState(() {
//             //           checkBoxValue = value!;
//             //         });
//             //       },
//             //     ),
//             //     Text("Do you want to learn Mobile Development?"),
//             //   ],
//             // ),
//             // Text('Please let us know your gender:'),
//             // ListTile(
//             //   title: Text("Male"),
//             //   leading: Radio<String>(
//             //     value: 'male',
//             //     groupValue: _selectedGender,
//             //     onChanged: (value) {
//             //       setState(() {
//             //         _selectedGender = value!;
//             //       });
//             //     },
//             //   ),
//             // ),
//             // ListTile(
//             //   title: Text("Female"),
//             //   leading: Radio<String>(
//             //     value: 'female',
//             //     groupValue: _selectedGender,
//             //     onChanged: (value) {
//             //       setState(() {
//             //         _selectedGender = value!;
//             //       });
//             //     },
//             //   ),
//             // ),
//             // Image.asset(
//             //   'assets/flower_img.jpeg', //path
//             //   width: 300,
//             //   height: 200,
//             // ),
//             // Image.network(
//             //   'https://smartphonestorekenya.com/wp-content/uploads/2022/09/Apple-iPhone-14.jpg',
//             // ),
//             // Slider(
//             //   value: sliderValue,
//             //   activeColor: Colors.green,
//             //   inactiveColor: Colors.red,
//             //   min: 1.0,
//             //   max: 100.0,
//             //   onChanged: (value) {
//             //     setState(() {
//             //       sliderValue = value;
//             //       print("Slide:Value:$sliderValue");
//             //     });
//             //   },
//             // ),
//             Switch(
//               value: isSwitch,
//               activeColor: Colors.blue,
//               inactiveThumbColor: Colors.grey,
//               onChanged: (value) {
//                 setState(() {
//                   isSwitch = value;
//                 });
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
// int _counter = 0;

// void _incrementCounter() {
//   setState(() {
//     _counter++;
//   });
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     backgroundColor: Colors.grey,
//     appBar: AppBar(
//       title: Text("Fisrt Day of Flutter"),
//       backgroundColor: Colors.green,
//       foregroundColor: Colors.black,
//       shadowColor: Colors.yellow,
//     ),
//     body: Center(
//       // Center is a layout widget. It takes a single child and positions it
//       // in the middle of the parent.
//       child: Column(
//         // Column is also a layout widget. It takes a list of children and
//         // arranges them vertically. By default, it sizes itself to fit its
//         // children horizontally, and tries to be as tall as its parent.
//         //
//         // Invoke "debug painting" (press "p" in the console, choose the
//         // "Toggle Debug Paint" action from the Flutter Inspector in Android
//         // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//         // to see the wireframe for each widget.
//         //
//         // Column has various properties to control how it sizes itself and
//         // how it positions its children. Here we use mainAxisAlignment to
//         // center the children vertically; the main axis here is the vertical
//         // axis because Columns are vertical (the cross axis would be
//         // horizontal).
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           const Text(
//             'You have pushed the button this many times:',
//           ),
//           Text(
//             '$_counter',
//             style: Theme.of(context).textTheme.headline4,
//           ),
//         ],
//       ),
//     ),
//     floatingActionButton: FloatingActionButton(
//       onPressed: _incrementCounter,
//       tooltip: 'Increment',
//       child: const Icon(Icons.add),
//     ), // This trailing comma makes auto-formatting nicer for build methods.
//   );
// }
