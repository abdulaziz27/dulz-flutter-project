// To parse this JSON data, do
//
//     final siswaModel = siswaModelFromJson(jsonString);

part of 'models.dart';

List<SiswaModel> siswaModelFromJson(String str) =>
    List<SiswaModel>.from(json.decode(str).map((x) => SiswaModel.fromJson(x)));

String siswaModelToJson(List<SiswaModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SiswaModel {
  SiswaModel({
    this.id,
    this.name,
    this.email,
    this.alamat,
    this.tanggalLahir,
    this.noTelp,
    this.createdAt,
    this.updatedAt,
    this.hafalan,
  });

  int id;
  String name;
  String email;
  String alamat;
  DateTime tanggalLahir;
  String noTelp;
  DateTime createdAt;
  DateTime updatedAt;
  List<Hafalan> hafalan;

  factory SiswaModel.fromJson(Map<String, dynamic> json) => SiswaModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        alamat: json["alamat"],
        tanggalLahir: DateTime.parse(json["tanggal_lahir"]),
        noTelp: json["no_telp"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        hafalan:
            List<Hafalan>.from(json["hafalan"].map((x) => Hafalan.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "alamat": alamat,
        "tanggal_lahir":
            "${tanggalLahir.year.toString().padLeft(4, '0')}-${tanggalLahir.month.toString().padLeft(2, '0')}-${tanggalLahir.day.toString().padLeft(2, '0')}",
        "no_telp": noTelp,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "hafalan": List<dynamic>.from(hafalan.map((x) => x.toJson())),
      };
}

class Hafalan {
  Hafalan({
    this.id,
    this.siswaId,
    this.suratAwal,
    this.ayatAwal,
    this.suratAkhir,
    this.ayatAkhir,
    this.keterangan,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  int siswaId;
  String suratAwal;
  String ayatAwal;
  String suratAkhir;
  String ayatAkhir;
  String keterangan;
  DateTime createdAt;
  DateTime updatedAt;

  factory Hafalan.fromJson(Map<String, dynamic> json) => Hafalan(
        id: json["id"],
        siswaId: json["siswa_id"],
        suratAwal: json["surat_awal"],
        ayatAwal: json["ayat_awal"],
        suratAkhir: json["surat_akhir"],
        ayatAkhir: json["ayat_akhir"],
        keterangan: json["keterangan"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "siswa_id": siswaId,
        "surat_awal": suratAwal,
        "ayat_awal": ayatAwal,
        "surat_akhir": suratAkhir,
        "ayat_akhir": ayatAkhir,
        "keterangan": keterangan,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
