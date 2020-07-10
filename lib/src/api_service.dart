import 'dart:convert';


import 'package:flutterrcode/src/transaksi.dart';
import 'package:http/http.dart' show Client;

import 'barang.dart';

class ApiService {
  final String url = "https://dewiagustini.000webhostapp.com";
  Client client = Client();

  Future<Transaksi> addTransaksi(Transaksi data) async {
    final response = await client.post(
      "$url/add_transaksi.php",
      headers: {
        "Content-Type": "application/json",
      },
      body: TransaksiToJson(data),
    );
    var jsonObj = json.decode(response.body);

    print("ini respon api add: ${jsonObj}");
    //print(response.statusCode);
    if (response.statusCode == 200) {
      return Transaksi.fromJsonObj(jsonObj);
    } else {
      return null;
    }
  }

  Future<Barang> getID(String Kode) async {
    final response = await client.get(
      "$url/get_detail.php?Kode=$Kode",
      headers: {
        "Content-Type": "application/json",
      },

    );
    var jsonObj = jsonDecode(response.body);

    print("ini respon api get id: ${jsonObj}");
    //print(response.statusCode);
    if (response.statusCode == 200) {
      return Barang.fromJsonObj(jsonObj);
    } else {
      return null;
    }
  }

}

