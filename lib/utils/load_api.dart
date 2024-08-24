import 'dart:convert';

import 'package:suktraining/model/model_pingat.dart';
import 'package:http/http.dart' as http;

Future<List<ModelPingat>> loadApi() async {
  final response = await http.get(Uri.parse(
      'https://pingat.perak.gov.my/webapi/getdatapingat.php?cari=801110085528'));

  // check status if success or not
  if (response.statusCode == 200) {
    List<dynamic> jsonResponse = json.decode(response.body);
    return jsonResponse.map((pingat) => ModelPingat.fromJson(pingat)).toList();
    //.map((ModelPingat) => ModelPingat.fromJson(modelpingat))
    //.toList();
  } else {
    throw Exception("Failed to load");
  }
}
