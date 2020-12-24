import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Bismillah"),
//         ),
// body: Container(
//   color: Colors.lightBlue[100],
//   width: 200,
//   height: 150,
//   child: Center(
//     child: Text("Hello Word"),
//   ),
// ),
// body: Column(
//   mainAxisAlignment: MainAxisAlignment.start,
//   crossAxisAlignment: CrossAxisAlignment.end,
//   children: [
//     Text(
//       "1",
//       maxLines: 3,
//       overflow: TextOverflow.ellipsis,
//       style: TextStyle(
//           fontStyle: FontStyle.italic,
//           color: Colors.green[500],
//           fontWeight: FontWeight.w500),
//     ),
//     Text("2"),
//     Text("3"),
//     Row(
//       children: [Text("4"), Text("5"), Text("6")],
//     )
//   ],
// ),
//         body: Container(
//           color: Colors.red,
//           margin: EdgeInsets.fromLTRB(8, 16, 8, 8),
//           child: Container(
//             // color: Colors.blue,
//             margin: EdgeInsets.all(16),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 gradient: LinearGradient(
//                     colors: [Colors.amber, Colors.blue],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomLeft)),
//           ),
//         ),
//       ),
//     );
//   }
// }
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              RaisedButton(
                // shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(18.0),
                //     side: BorderSide(color: Colors.red)),
                onPressed: tekanTombol,
                child: Text("Tambah Bilangan"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
