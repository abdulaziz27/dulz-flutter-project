// part of '../uis.dart';

// class TambahKaryawan extends StatefulWidget {
//   @override
//   TambahKaryawanState createState() => TambahKaryawanState();
// }

// class TambahKaryawanState extends State<TambahKaryawan> {
//   bool _isLoading = false;
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController email = TextEditingController();
//   TextEditingController password = TextEditingController();
//   TextEditingController name = TextEditingController();
//   String msg;

//   void simpanData() {
//     createPost(email.text, password.text, name.text).then((value) {
//       if (value == true) {
//         AlertDialog alertdialog = AlertDialog(
//           content: Container(
//             height: 100,
//             child: Column(
//               children: <Widget>[
//                 Text("Karyawan Berhasil Ditambahkan"),
//                 RaisedButton(
//                     child: Text("OK"),
//                     onPressed: () => Navigator.pushAndRemoveUntil(
//                           context,
//                           MaterialPageRoute(builder: (context) => Admin()),
//                           (Route<dynamic> route) => false,
//                         ))
//               ],
//             ),
//           ),
//         );
//         showDialog(context: context, child: alertdialog);
//       } else {
//         AlertDialog alertdialog = AlertDialog(
//           content: Container(
//             height: 100,
//             child: Column(
//               children: <Widget>[
//                 Text("Karyawan Gagal Ditambahkan"),
//                 RaisedButton(
//                     child: Text("OK"), onPressed: () => Navigator.pop(context))
//               ],
//             ),
//           ),
//         );
//         showDialog(context: context, child: alertdialog);
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Container(
//         color: Colors.teal,
//         child: Stack(
//           children: <Widget>[
//             Positioned(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       "Buat Setoran",
//                       style: TextStyle(
//                         fontSize: displayHeight(context) * 0.05,
//                         color: Colors.white,
//                       ),
//                     ),
//                     Card(
//                       elevation: 4.0,
//                       color: Colors.white,
//                       margin: EdgeInsets.only(left: 20, right: 20),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(15)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Form(
//                           key: _formKey,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: <Widget>[
//                               TextFormField(
//                                 controller: email,
//                                 style: TextStyle(color: Color(0xFF000000)),
//                                 cursorColor: Color(0xFF9b9b9b),
//                                 keyboardType: TextInputType.text,
//                                 decoration: InputDecoration(
//                                   prefixIcon: Icon(
//                                     Icons.email,
//                                     color: Colors.grey,
//                                   ),
//                                   hintText: "Email",
//                                   hintStyle: TextStyle(
//                                       color: Color(0xFF9b9b9b),
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.normal),
//                                 ),
//                                 validator: (emailValue) {
//                                   if (emailValue.isEmpty) {
//                                     return 'Please enter email';
//                                   }
//                                   return null;
//                                 },
//                               ),
//                               TextFormField(
//                                 controller: name,
//                                 style: TextStyle(color: Color(0xFF000000)),
//                                 cursorColor: Color(0xFF9b9b9b),
//                                 keyboardType: TextInputType.text,
//                                 decoration: InputDecoration(
//                                   prefixIcon: Icon(
//                                     Icons.insert_emoticon,
//                                     color: Colors.grey,
//                                   ),
//                                   hintText: "Name",
//                                   hintStyle: TextStyle(
//                                       color: Color(0xFF9b9b9b),
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.normal),
//                                 ),
//                                 validator: (name) {
//                                   if (name.isEmpty) {
//                                     return 'Please enter your first name';
//                                   }
//                                   return null;
//                                 },
//                               ),
//                               TextFormField(
//                                 controller: password,
//                                 style: TextStyle(color: Color(0xFF000000)),
//                                 cursorColor: Color(0xFF9b9b9b),
//                                 keyboardType: TextInputType.text,
//                                 obscureText: true,
//                                 decoration: InputDecoration(
//                                   prefixIcon: Icon(
//                                     Icons.vpn_key,
//                                     color: Colors.grey,
//                                   ),
//                                   hintText: "Password",
//                                   hintStyle: TextStyle(
//                                       color: Color(0xFF9b9b9b),
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.normal),
//                                 ),
//                                 validator: (passwordValue) {
//                                   if (passwordValue.isEmpty) {
//                                     return 'Please enter password';
//                                   }
//                                   return null;
//                                 },
//                               ),
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.fromLTRB(
//                                         65, 10, 10, 10),
//                                     child: FlatButton(
//                                       child: Padding(
//                                         padding: EdgeInsets.only(
//                                             top: 8,
//                                             bottom: 8,
//                                             left: 10,
//                                             right: 10),
//                                         child: Text(
//                                           "Back",
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 15.0,
//                                             decoration: TextDecoration.none,
//                                             fontWeight: FontWeight.normal,
//                                           ),
//                                         ),
//                                       ),
//                                       color: Colors.red,
//                                       disabledColor: Colors.grey,
//                                       shape: new RoundedRectangleBorder(
//                                           borderRadius:
//                                               new BorderRadius.circular(20.0)),
//                                       onPressed: () {
//                                         Navigator.pop(context);
//                                       },
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.all(10.0),
//                                     child: FlatButton(
//                                       child: Padding(
//                                         padding: EdgeInsets.only(
//                                             top: 8,
//                                             bottom: 8,
//                                             left: 10,
//                                             right: 10),
//                                         child: Text(
//                                           _isLoading
//                                               ? 'Proccessing...'
//                                               : 'Register',
//                                           textDirection: TextDirection.ltr,
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 15.0,
//                                             decoration: TextDecoration.none,
//                                             fontWeight: FontWeight.normal,
//                                           ),
//                                         ),
//                                       ),
//                                       color: Colors.teal,
//                                       disabledColor: Colors.grey,
//                                       shape: new RoundedRectangleBorder(
//                                           borderRadius:
//                                               new BorderRadius.circular(20.0)),
//                                       onPressed: () {
//                                         if (_formKey.currentState.validate()) {
//                                           simpanData();
//                                         }
//                                       },
//                                     ),
//                                   ),
//                                 ],
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
