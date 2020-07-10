import 'package:flutter/material.dart';

class Bayar extends StatefulWidget {

 final String namaBarang;
  final double harga;
  final int jmlBeli;
  final int totalBelanja;

  //mengambil data dari screen kasir
  Bayar({Key key, @required this.namaBarang,
      @required this.harga,
      @required this.jmlBeli,
      @required this.totalBelanja}) : super(key: key);

  @override
  State createState() => BayarState();
   

}

class BayarState extends State<Bayar> {

bool error = false; //inisialisasi error
int uangBayar = 0, uangKembalian = 0; //inisialisasi variable untuk menampung data

  void kembalian() {
    setState(() {
      uangKembalian = uangBayar - widget.totalBelanja; //widget.totalBelanja itu diambil dari screen Kasir
    });
    //cek apakah uang bayar lebih kecil dari total belanja atau tidak, jika kurang, maka error menjadi true
    if (uangBayar < widget.totalBelanja){
      error = true;
    }else{
      error = false;
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Center(child: Text("Pembayaran"))),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(child: Text(
                    "Anda membeli ${widget.namaBarang} sebanyak ${widget.jmlBeli} dengan total belanja sebesar Rp. ${widget.totalBelanja}", style: TextStyle(
                      fontSize:21,
                      color: Colors.black
                    ), 
                  )),
                  Padding(padding: EdgeInsets.all(10)),
                  Container(
                    child: TextField(
                      onChanged: (txt) {
                        setState(() {
                          uangBayar = int.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      maxLength: 15,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                          labelText: "Uang Bayar",
                          //suffix: Text('qty'),
                          border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0)),
                          //filled: true,
                          hintText: 'Uang Bayar'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                          color: Colors.blueGrey,
                          child: Text(
                            "Bayar",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: kembalian),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),

                      error== false ? 
                      Text(
                        "Kembalian anda : Rp. $uangKembalian",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ) : 
                      Text(
                        "Uang anda kurang!",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
