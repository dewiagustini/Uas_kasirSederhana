import 'dart:convert';
import 'package:http/http.dart' as http;

class Transaksi {
  String Id_transaksi;
  String Id_barang;
  String Total_bayar;
  String Keterangan;

  Transaksi({
    //this.message,
    this.Id_transaksi,
    this.Id_barang,
    this.Total_bayar,
    this.Keterangan,
  });

  factory Transaksi.fromJsonObj(Map<String, dynamic> map) {
    return Transaksi(
        Id_transaksi: map['0']["Id_transaksi"],
        Id_barang: map['0']["Id_barang"],
        Total_bayar: map['0']["Total_bayar"],
        Keterangan: map['0']["Keterangan"],
    );
  }

//  //untuk mengirim data ke api
  Map<String, dynamic> toJsonObj() {
    return {
      "Id_transaksi": Id_transaksi,
      "Id_barang": Id_barang,
      "Total_bayar": Total_bayar,
      "Keterangan": Keterangan,
    };
  }

  @override
  String toString() {
    return 'Transaksi{Id_transaksi: $Id_transaksi, Id_barang: $Id_barang, Total_bayar: $Total_bayar, Keterangan: $Keterangan}';
  }
}

List<Transaksi> TransaksiFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Transaksi>.from(data.map((item) => Transaksi.fromJsonObj(item)));
}

String TransaksiToJson(Transaksi data) {
  final jsonData = data.toJsonObj();
  return json.encode(jsonData);
}
