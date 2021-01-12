// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterku/get_all_user_modal.dart';
import 'package:flutterku/get_user_modal.dart';
import 'package:flutterku/login_page.dart';
import 'package:flutterku/post_result_modal.dart';
import 'package:logger/logger.dart';

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

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int number = 0;

//   void tekanTombol() {
//     setState(() {
//       number = number + 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Stateful Widget Demo"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 number.toString(),
//                 style: TextStyle(fontSize: 10 + number.toDouble()),
//               ),
//               RaisedButton(
//                 // shape: RoundedRectangleBorder(
//                 //     borderRadius: BorderRadius.circular(18.0),
//                 //     side: BorderSide(color: Colors.red)),
//                 onPressed: tekanTombol,
//                 child: Text("Tambah Bilangan"),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "Latihan FontStyle",
//             style: TextStyle(
//                 fontFamily: "vermin",
//                 fontWeight: FontWeight.w700,
//                 fontSize: 20),
//           ),
//         ),
//         body: Center(
//           child: Text(
//             "Selamat Datang",
//             style: TextStyle(
//               fontFamily: "DancingScript",
//               fontSize: 20,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   List<Widget> widgets = [];
//   int counter = 1;

// _MyAppState() {
//   for (var i = 0; i < 15; i++) {
//     widgets.add(Text(
//       "Data ke" + i.toString(),
//       style: TextStyle(fontSize: 35 + i.toDouble()),
//     ));
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("List dan ListView"),
//           ),
//           body: ListView(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   RaisedButton(
//                       onPressed: () {
//                         setState(() {
//                           widgets.add(Text("Data ke -" + counter.toString()));
//                           counter++;
//                         });
//                       },
//                       child: Text("Tambah")),
//                   RaisedButton(
//                       onPressed: () {
//                         setState(() {
//                           widgets.removeLast();
//                           counter--;
//                         });
//                       },
//                       child: Text("Hapus")),
//                 ],
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: widgets,
//               )
//             ],
//           )),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// Random random = new Random();

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Animated Container")),
//         body: Center(
//           child: GestureDetector(
//             onTap: () {
//               setState(() {});
//             },
//             child: AnimatedContainer(
//               duration: Duration(seconds: 1),
//               color: Color.fromARGB(255, random.nextInt(256),
//                   random.nextInt(256), random.nextInt(256)),
//               width: 50.0 + random.nextInt(101),
//               height: 50.0 + random.nextInt(101),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan Fleksibel Container"),
//         ),
//         body: Column(
//           children: [
//             Flexible(
//               flex: 5,
//               child: Row(
//                 children: [
//                   Flexible(
//                     flex: 3,
//                     child: Container(
//                       color: Colors.green,
//                     ),
//                   ),
//                   Flexible(
//                     flex: 3,
//                     child: Container(
//                       color: Colors.red,
//                     ),
//                   ),
//                   Flexible(
//                     flex: 3,
//                     child: Container(
//                       color: Colors.blue,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Flexible(
//               flex: 3,
//               child: Container(
//                 color: Colors.cyanAccent,
//               ),
//             ),
//             Flexible(
//               flex: 2,
//               child: Container(
//                 color: Colors.amberAccent,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   List<Widget> widget = [];

//   MyApp() {
//     for (var i = 0; i < 15; i++) {
//       widget.add(Text(
//         "ini adalah contoh data ke " + i.toString(),
//         style: TextStyle(fontSize: 30),
//       ));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan stack and align widget"),
//         ),
//         body: Stack(
//           children: [
//             //background
//             Column(
//               children: [
//                 Flexible(
//                   flex: 1,
//                   child: Row(
//                     children: [
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.black12,
//                         ),
//                       ),
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.white10,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 Flexible(
//                   flex: 1,
//                   child: Row(
//                     children: [
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.white10,
//                         ),
//                       ),
//                       Flexible(
//                         flex: 1,
//                         child: Container(
//                           color: Colors.black12,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             ListView(
//               children: [
//                 Container(
//                   margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: widget,
//                   ),
//                 )
//               ],
//             ),
//             Align(
//               alignment: Alignment(0.8, 0.9),
//               child: RaisedButton(
//                 color: Colors.amber[200],
//                 onPressed: null,
//                 child: Text("Tambah Data"),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan Image Widget"),
//         ),
//         body: Center(
//           child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//             Container(
//               color: Colors.black38,
//               width: 200,
//               height: 200,
//               padding: EdgeInsets.all(3),
//               child: Image(
//                 image: NetworkImage(
//                     "https://variety.com/wp-content/uploads/2015/07/naruto_movie-lionsgate.jpg?w=681&h=383&crop=1"),
//                 fit: BoxFit.contain,
//                 repeat: ImageRepeat.repeat,
//               ),
//             ),
//             Container(
//               color: Colors.amberAccent,
//               width: 200,
//               height: 200,
//               padding: EdgeInsets.all(3),
//               child: Image(
//                 image: AssetImage("images/background2.jpg"),
//                 fit: BoxFit.contain,
//                 repeat: ImageRepeat.repeat,
//               ),
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Latihan spacer")),
//         body: Center(
//           child: Row(
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Spacer(flex: 2),
//               Container(
//                 width: 80,
//                 height: 80,
//                 color: Colors.blueGrey,
//               ),
//               Spacer(flex: 1),
//               Container(
//                 width: 80,
//                 height: 80,
//                 color: Colors.greenAccent,
//               ),
//               Spacer(flex: 3),
//               Container(
//                 width: 80,
//                 height: 80,
//                 color: Colors.redAccent,
//               ),
//               Spacer(flex: 1),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LoginPage(),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// TextEditingController controllerku = TextEditingController(text: "nilai awal");

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Latihan Textfield"),
//         ),
//         body: Container(
//           margin: EdgeInsets.all(20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               TextField(
//                 onChanged: (isi) {
//                   setState(() {});
//                 },
//                 controller: controllerku,
//               ),
//               Text(controllerku.text)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MainMediaQuery(),
//     );
//   }
// }

// class MainMediaQuery extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Latihan mediaquery"),
//       ),
//       body: (MediaQuery.of(context).orientation == Orientation.portrait)
//           ? Column(
//               children: generateContainers(),
//             )
//           : Row(
//               children: generateContainers(),
//             ),
//     );
//   }

//   List<Widget> generateContainers() {
//     return [
//       Container(color: Colors.amberAccent, width: 100, height: 100),
//       Container(color: Colors.red, width: 100, height: 100),
//       Container(color: Colors.black12, width: 100, height: 100)
//     ];
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Latihan Ink Button gradasi")),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               RaisedButton(
//                 color: Colors.blueAccent,
//                 child: Text("Raise"),
//                 shape: StadiumBorder(),
//                 onPressed: () {},
//               ),
//               Container(
//                 width: 150,
//                 height: 40,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20),
//                   gradient: LinearGradient(
//                       colors: [Colors.pink, Colors.red],
//                       begin: Alignment.topRight,
//                       end: Alignment.bottomLeft),
//                 ),
//                 child: Material(),
//               )
//             ],
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
  List<Widget> widgets = [];

  _MyAppState() {
    for (var i = 0; i < 15; i++) {
      widgets.add(Text(
        "Data ke" + i.toString(),
        style: TextStyle(fontSize: 25),
      ));
    }
  }

  Logger logger = Logger();
  PostResult postResult = null;
  UserResult userResult = null;
  AllUser allUser = null;

  final myController_name = TextEditingController();
  final myControllerjob = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomPadding: false, //permasalahan keyboard overflowed
        appBar: AppBar(
          title: Text("Belajar HTTP POST"),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(16, 8, 16, 16),
          child: Column(
            children: [
              Flexible(
                flex: 5,
                child: Stack(
                  children: [
                    Card(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 25),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Test GET & Post"),
                            ),
                          ),
                          Row(children: [
                            Flexible(
                                flex: 1,
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("Nama"))),
                            Flexible(
                                flex: 2,
                                child: TextFormField(
                                    controller: myController_name))
                          ]),
                          Row(children: [
                            Flexible(
                                flex: 1,
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("Pekerjaan"))),
                            Flexible(
                                flex: 2,
                                child:
                                    TextFormField(controller: myControllerjob))
                          ]),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(children: [
                              Flexible(
                                  flex: 1,
                                  child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text((postResult != null)
                                          ? postResult.name
                                          : "Tidak ada data"))),
                              Flexible(
                                  flex: 1,
                                  child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text((postResult != null)
                                          ? postResult.job
                                          : "Tidak ada data")))
                            ]),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(children: [
                              Flexible(
                                  flex: 1,
                                  child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text((userResult != null)
                                          ? "id : " +
                                              userResult.id +
                                              " nama : " +
                                              userResult.email
                                          : "Tidak ada data")))
                            ]),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                                colors: [Colors.red[900], Colors.blue[900]],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft)),
                        child: Material(
                          color: Colors.transparent,
                          child: Center(
                            child: InkWell(
                              splashColor: Colors.red.withAlpha(30),
                              onTap: () {
                                // String v_nama =  myController_name.text;
                                // String v_job = myControllerjob.text;

                                // print(v_nama);
                                PostResult.connectToAPI(myController_name.text,
                                        myControllerjob.text)
                                    .then((value) {
                                  postResult = value;
                                  logger.d(myController_name.text);
                                  setState(() {});
                                });
                              },
                              child: Center(
                                child: Text(
                                  "Post",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                                colors: [Colors.green[900], Colors.yellow[900]],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft)),
                        child: Material(
                          color: Colors.transparent,
                          child: Center(
                            child: InkWell(
                              splashColor: Colors.red.withAlpha(30),
                              onTap: () {
                                // String v_nama =  myController_name.text;
                                // String v_job = myControllerjob.text;

                                // print(v_nama);
                                UserResult.connectToAPI("5").then((value) {
                                  userResult = value;
                                  // logger.d();
                                  setState(() {});
                                });
                              },
                              child: Center(
                                child: Text(
                                  "GET",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                                colors: [Colors.red[900], Colors.green[900]],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft)),
                        child: Material(
                          color: Colors.transparent,
                          child: Center(
                            child: InkWell(
                              splashColor: Colors.red.withAlpha(30),
                              onTap: () {
                                // String v_nama =  myController_name.text;
                                // String v_job = myControllerjob.text;

                                // print(v_nama);
                                AllUser.connectToAPI("2").then((allUser) {
                                  allUser = allUser;
                                  widgets.clear();
                                  for (var i = 0; i < allUser.length; i++) {
                                    widgets.add(Text(
                                      "Id :" +
                                          allUser[i].id.toString() +
                                          " " +
                                          allUser[i].name.toString(),
                                      style: TextStyle(fontSize: 25),
                                    ));
                                  }
                                  // logger.d();
                                  setState(() {});
                                });
                              },
                              child: Center(
                                child: Text(
                                  "GET All User",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: ListView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: widgets,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
