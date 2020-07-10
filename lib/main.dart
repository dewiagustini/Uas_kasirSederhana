
import 'src/Kasir.dart';
import 'src/Menu.dart';
import 'src/about_me.dart';
import 'src/Bayar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Kasir Sederhana',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: Menu()),
        routes: <String, WidgetBuilder>{
          '/menu': (BuildContext context) => new Menu(),
          '/kasir': (BuildContext context) => new Kasir(),
          '/tentang': (BuildContext context) => new MyProfil(),
          '/bayar': (BuildContext context) => new Bayar(),
        }
    );

  }
}