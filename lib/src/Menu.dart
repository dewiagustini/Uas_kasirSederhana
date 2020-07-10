import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Kasir"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.blueGrey,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage('images/fotoo.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Text(
                  'Aplikasi Kasir Sederhana',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Silakan pilih menu di bawah',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 40, right: 70, left: 70),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 105,
                        width: 105,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueGrey),
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: EdgeInsets.all(0),
                                  alignment: Alignment.center,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.attach_money,
                                    ),
                                    iconSize: 58,
                                    color: Colors.white,
                                    splashColor: Colors.white,
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/kasir');
                                    },
                                  ),
                                ),
                              ),
                              Text(
                                'Transaksi',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueGrey),
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.all(Radius.circular(7))),
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: EdgeInsets.all(0),
                                  alignment: Alignment.center,
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.person,
                                    ),
                                    iconSize: 58,
                                    color: Colors.white,
                                    splashColor: Colors.white,
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/tentang');
                                    },
                                  ),
                                ),
                              ),
                              Text(
                                'Tentang',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
