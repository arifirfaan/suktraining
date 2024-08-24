// models/recipient.dart

class ModelPingat {
  final String idSenarai;
  final String noKp;
  final String kodPingat;
  final String noKpLama;
  final String tahun;
  final String darjah;
  final String nama;
  final String jawatan;
  final String jabatan;
  final String alamat;

  ModelPingat({
    required this.idSenarai,
    required this.noKp,
    required this.kodPingat,
    required this.noKpLama,
    required this.tahun,
    required this.darjah,
    required this.nama,
    required this.jawatan,
    required this.jabatan,
    required this.alamat,
  });

  factory ModelPingat.fromJson(Map<String, dynamic> json) {
    return ModelPingat(
      idSenarai: json['idsenarai'],
      noKp: json['nokp'],
      kodPingat: json['kod_pingat'],
      noKpLama: json['nokplama'],
      tahun: json['tahun'],
      darjah: json['darjah'],
      nama: json['nama'],
      jawatan: json['jawatan'],
      jabatan: json['jabatan'],
      alamat: json['alamat'],
    );
  }
}
