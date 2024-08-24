class ModelPingat {
  int idno;
  String name;
  String jawatan;
  String jabatan;

  ModelPingat(
      {required this.idno,
      required this.name,
      required this.jawatan,
      required this.jabatan});

  factory ModelPingat.fromJson(Map<String, dynamic> json) {
    return ModelPingat(
      idno: json['idno'],
      name: json['name'],
      jawatan: json['jawatan'],
      jabatan: json['jabatan'],
    );
  }
}
