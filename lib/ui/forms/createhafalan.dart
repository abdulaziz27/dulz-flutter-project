part of '../uis.dart';

class CreateHafalan extends StatefulWidget {
  @override
  _CreateHafalanState createState() => _CreateHafalanState();
}

class _CreateHafalanState extends State<CreateHafalan> {
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _siswaId = TextEditingController();
  TextEditingController _suratAwal = TextEditingController();
  TextEditingController _ayatAwal = TextEditingController();
  TextEditingController _suratAkhir = TextEditingController();
  TextEditingController _ayatAkhir = TextEditingController();
  TextEditingController _keterangan = TextEditingController();
  String msg;

  void simpanData() {
    createHafalan(_siswaId.text, _suratAwal.text, _ayatAwal.text,
            _suratAkhir.text, _ayatAkhir.text, _keterangan.text)
        .then((value) {
      if (value == true) {
        AlertDialog alertdialog = AlertDialog(
          content: Container(
            height: 100,
            child: Column(
              children: <Widget>[
                Text("Hafalan Berhasil Ditambahkan"),
                RaisedButton(
                  child: Text("OK"),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
          ),
        );
        showDialog(context: context, child: alertdialog);
      } else {
        AlertDialog alertdialog = AlertDialog(
          content: Container(
            height: 100,
            child: Column(
              children: <Widget>[
                Text("Hafalan Gagal Ditambahkan"),
                RaisedButton(
                    child: Text("OK"), onPressed: () => Navigator.pop(context))
              ],
            ),
          ),
        );
        showDialog(context: context, child: alertdialog);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.teal,
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Tambah Hafalan",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Card(
                      elevation: 4.0,
                      color: Colors.white,
                      margin: EdgeInsets.only(left: 20, right: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextFormField(
                                controller: _siswaId,
                                style: TextStyle(color: Color(0xFF000000)),
                                cursorColor: Color(0xFF9b9b9b),
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Colors.grey,
                                  ),
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF9b9b9b),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                                validator: (emailValue) {
                                  if (emailValue.isEmpty) {
                                    return 'Please enter email';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                controller: _suratAwal,
                                style: TextStyle(color: Color(0xFF000000)),
                                cursorColor: Color(0xFF9b9b9b),
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.insert_emoticon,
                                    color: Colors.grey,
                                  ),
                                  hintText: "Name",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF9b9b9b),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                                validator: (name) {
                                  if (name.isEmpty) {
                                    return 'Please enter your first name';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                controller: _ayatAwal,
                                style: TextStyle(color: Color(0xFF000000)),
                                cursorColor: Color(0xFF9b9b9b),
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.insert_emoticon,
                                    color: Colors.grey,
                                  ),
                                  hintText: "Name",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF9b9b9b),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                                validator: (name) {
                                  if (name.isEmpty) {
                                    return 'Please enter your first name';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                controller: _suratAkhir,
                                style: TextStyle(color: Color(0xFF000000)),
                                cursorColor: Color(0xFF9b9b9b),
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.insert_emoticon,
                                    color: Colors.grey,
                                  ),
                                  hintText: "Name",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF9b9b9b),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                                validator: (name) {
                                  if (name.isEmpty) {
                                    return 'Please enter your first name';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                controller: _ayatAkhir,
                                style: TextStyle(color: Color(0xFF000000)),
                                cursorColor: Color(0xFF9b9b9b),
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.insert_emoticon,
                                    color: Colors.grey,
                                  ),
                                  hintText: "Name",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF9b9b9b),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                                validator: (name) {
                                  if (name.isEmpty) {
                                    return 'Please enter your first name';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                controller: _keterangan,
                                style: TextStyle(color: Color(0xFF000000)),
                                cursorColor: Color(0xFF9b9b9b),
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.insert_emoticon,
                                    color: Colors.grey,
                                  ),
                                  hintText: "Name",
                                  hintStyle: TextStyle(
                                      color: Color(0xFF9b9b9b),
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ),
                                validator: (name) {
                                  if (name.isEmpty) {
                                    return 'Please enter your first name';
                                  }
                                  return null;
                                },
                              ),
                              // TextFormField(
                              //   controller: password,
                              //   style: TextStyle(color: Color(0xFF000000)),
                              //   cursorColor: Color(0xFF9b9b9b),
                              //   keyboardType: TextInputType.text,
                              //   obscureText: true,
                              //   decoration: InputDecoration(
                              //     prefixIcon: Icon(
                              //       Icons.vpn_key,
                              //       color: Colors.grey,
                              //     ),
                              //     hintText: "Password",
                              //     hintStyle: TextStyle(
                              //         color: Color(0xFF9b9b9b),
                              //         fontSize: 15,
                              //         fontWeight: FontWeight.normal),
                              //   ),
                              //   validator: (passwordValue) {
                              //     if (passwordValue.isEmpty) {
                              //       return 'Please enter password';
                              //     }
                              //     return null;
                              //   },
                              // ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        65, 10, 10, 10),
                                    child: FlatButton(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 8,
                                            bottom: 8,
                                            left: 5,
                                            right: 5),
                                        child: Text(
                                          "Back",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8.0,
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      color: Colors.red,
                                      disabledColor: Colors.grey,
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(20.0)),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: FlatButton(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 8,
                                            bottom: 8,
                                            left: 5,
                                            right: 5),
                                        child: Text(
                                          _isLoading
                                              ? 'Proccessing...'
                                              : 'Register',
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 8.0,
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      color: Colors.teal,
                                      disabledColor: Colors.grey,
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(20.0)),
                                      onPressed: () {
                                        if (_formKey.currentState.validate()) {
                                          simpanData();
                                        }
                                      },
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
