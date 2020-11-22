part of 'uis.dart';

class Hafalan extends StatefulWidget {
  static const String id = "HALAMANBERANDA";

  @override
  _HafalanState createState() => _HafalanState();
}

class _HafalanState extends State<Hafalan> {
  List dataHafalanOk, dataSiswaOk;

  void dataHafalan() {
    getAllHafalan().then((value) {
      setState(() {
        dataHafalanOk = value;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    dataHafalan();
  }

  void hapusHafalan(String id) async {
    var hapus = await deleteHafalan(id);

    Toast.show("Success $hapus", context,
        duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
    print('test');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: dataHafalanOk == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Colors.blue[200],
                Colors.blue
                // Colors.blueAccent
              ])),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: dataHafalanOk.length,
                        itemBuilder: (context, i) {
                          return Card(
                            elevation: 8,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              title: Text(
                                dataHafalanOk[i].suratAwal,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.details,
                                    color: Colors.green,
                                  ),
                                  Text("Lebih Detail")
                                ],
                              ),
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return DataSingleHafalan(
                                      id: dataHafalanOk[i].id.toString());
                                }));
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.all(20),
                      child: FloatingActionButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return CreateHafalan();
                          }));
                        },
                        tooltip: 'INCREMENT',
                        child: Icon(Icons.add),
                      ),
                    ),
                    // Container(
                    //   alignment: Alignment.bottomRight,
                    //   padding: EdgeInsets.all(20),
                    //   child: FloatingActionButton(
                    //     onPressed: () {
                    //       sendMail();
                    //     },
                    //     tooltip: 'INCREMENT',
                    //     child: Icon(Icons.email),
                    //   ),
                    // )
                  ]),
            ),
    );
  }
}
