part of 'view_models.dart';

// Future getHafalan() async {
//   try {
//     http.Response hasil = await http.get(
//         Uri.encodeFull("https://flutter-project.herokuapp.com/api/setor"),
//         headers: {"Accept": "application/json"});

//     if (hasil.statusCode == 200) {
//       print("Sukses Menampilkan Data");
//       final data = hafalanModelFromJson(hasil.body);
//       return data;
//     } else {
//       print("Gagal");
//       return null;
//     }
//   } catch (e) {
//     print("Error pada Catch $e");
//   }
// }
Future getAllSiswa() async {
  try {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://flutter-project.herokuapp.com/api/siswa"),
        headers: {"Accept": "application/json"});

    if (hasil.statusCode == 200) {
      print("Sukses menampilkan data");
      final data = siswaModelFromJson(hasil.body);
      return data;
    } else {
      print("Gagal menampikan data");
      return null;
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}

Future createSiswa(String name, String email, String alamat,
    DateTime tanggalLahir, String noTelp) async {
  try {
    var data = {
      "name": name,
      "email": email,
      "alamat": alamat,
      "tanggal_lahir":
          "${tanggalLahir.year.toString().padLeft(4, '0')}-${tanggalLahir.month.toString().padLeft(2, '0')}-${tanggalLahir.day.toString().padLeft(2, '0')}",
      "no_telp": noTelp,
    };
    var url = "https://flutter-project.herokuapp.com/api/siswa";
    var hasil = await http.post(url, body: (data));
    if (hasil.statusCode == 200) {
      print("Sukses menyimpan data");
      return true;
    } else {
      print("Gagal menyimpan data");
      print(data);
      return false;
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}

Future getSingleDataSiswa(String id) async {
  try {
    http.Response hasil = await http.get(
        Uri.encodeFull("https://flutter-project.herokuapp.com/api/siswa/${id}"),
        headers: {"Accept": "application/json"});

    if (hasil.statusCode == 200) {
      print("Sukses menampilkan 1 data");
      final data = json.decode(hasil.body);
      print(data);
      return data;
    } else {
      print("Gagal menampikan 1 data");
      return null;
    }
  } catch (e) {
    print("Error pada catch $e");
  }
}

Future deleteSiswa(String id) async {
  try {
    var url = "https://flutter-project.herokuapp.com/api/siswa/${id}";
    var hasil = await http.delete(url);
    if (hasil.statusCode == 200) {
      print("Sukses Delete Data");
      return true;
    } else {
      print("Gagal Delete Data");
      return false;
    }
  } catch (e) {
    print("Error pada Catch $e");
  }
}
