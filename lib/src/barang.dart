import 'dart:convert';
import 'package:http/http.dart' as http;

class Barang {
  String Id_barang;
  String Kode;
  String Nama_barang;
  String Harga;
  String Stok;

  Barang({
    this.Id_barang,
    this.Nama_barang,
    this.Kode,
    this.Harga,
    this.Stok,
  });

  //ini untuk mengambil data dari api
  factory Barang.fromJsonObj(Map<String, dynamic> map) {
    return Barang(
        Id_barang: map["Id_barang"],
        Kode: map["Kode"],
        Nama_barang: map["Nama_barang"],
        Harga: map["Harga"],
        Stok: map["Stok"],

    );
  }

//  //untuk mengirim data ke api
  Map<String, dynamic> toJsonObj() {
    return {
      "Id_barang": Id_barang,
      "Kode": Kode,
      "Nama_barang": Nama_barang,
      "Harga": Harga,
      "Stok": Stok,
    };
  }

  @override
  String toString() {
    return 'Barang{Id_barang: $Id_barang, Kode: $Kode, Nama_barang: $Nama_barang, Harga: $Harga, Stok: $Stok}';
  }
}

List<Barang> BarangFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Barang>.from(data.map((item) => Barang.fromJsonObj(item)));
}

String BarangToJson(Barang data) {
  final jsonData = data.toJsonObj();
  return json.encode(jsonData);
}
