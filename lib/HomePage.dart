import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'DetailBarang.dart';

class HomePage extends StatefulWidget {
  @override
  HomePage_State createState() => HomePage_State();
}

class HomePage_State extends State<HomePage> {
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  dispose(){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  var Homepage = 'Rental Penyewaan KBN';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Homepage,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal,
              color: Colors.white, debugLabel: 'Home Page'),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color.fromRGBO(100, 88, 120, 1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5, style: BorderStyle.solid, color: Colors.black54),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset('assets/image/KBN.jpeg', fit: BoxFit.contain,),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 160,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1.2, color: Colors.white, style: BorderStyle.solid)
                  ),
                  child: RaisedButton(
                    child: Text('Barang Elektronik',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    onPressed: (){
                      var db = detailbarang();
                      Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>db));
                    },
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 160,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1.2, color: Colors.white, style: BorderStyle.solid),
                  ),
                  child: RaisedButton(
                    child: Text('Website KBN',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    onPressed: (){

                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 188),
              child: Divider(
                height: 1.1,
                color: Colors.black54,
                thickness: 1.5,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Container(
                padding: EdgeInsets.only(left: 215),
                child: ListTile(
                  title: Text('Keluar App', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  leading: Icon(Icons.exit_to_app, size: 30,),
                  onTap: (){
                    exit(0);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
