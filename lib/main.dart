import 'package:flutter/material.dart';
import 'package:rental_barang_kbn/HomePage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rental Barang KBN',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: HomePage(),
    );
  }
}
