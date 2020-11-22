part of 'uis.dart';

class DataSingleHafalan extends StatefulWidget {
  final String id;

  DataSingleHafalan({this.id});

  @override
  _DataSingleHafalanState createState() => _DataSingleHafalanState();
}

class _DataSingleHafalanState extends State<DataSingleHafalan> {
  Map<String, dynamic> singleHafalan;

  void dataSingleHafalan() {
    getSingleDataHafalan(widget.id).then((value) {
      setState(() {
        singleHafalan = value;
        // List<dynamic> data = singleKaryawan["name"];
      });
    });
  }

  @override
  void initState() {
    super.initState();
    dataSingleHafalan();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 7,
        backgroundColor: Colors.teal[500],
        title: Text("Aplikasi Hafalan"),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Icon(
                  Icons.replay,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: singleHafalan == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 8,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      title: Text(
                        singleHafalan['hafalan'][0]['keterangan'].toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_right,
                                color: Colors.greenAccent,
                              ),
                              Expanded(
                                  child: Text("Setoran Hafalan : " +
                                      singleHafalan['hafalan'][0]['surat_awal']
                                          .toString())),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.arrow_right,
                                color: Colors.greenAccent,
                              ),
                              Text('Setoran Akhir : ' +
                                  singleHafalan['hafalan'][0]['surat_akhir']
                                      .toString()),
                            ],
                          ),
                        ],
                      ),
                      trailing: Column(
                        children: <Widget>[
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                          Text("Tepat Waktu")
                        ],
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
