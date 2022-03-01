import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Detail.dart';

class detailbarang extends StatefulWidget {
  @override
  _detailbarangState createState() => _detailbarangState();
}

class _detailbarangState extends State<detailbarang> {
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

  var HomePage = 'HomePage Barang';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(HomePage,
          style: TextStyle(),
        ),
        backgroundColor: Colors.black54,
      ),
      backgroundColor: Color.fromRGBO(50, 183, 99, 1),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          CardItem(ImageBarang: 'assets/image/Kabel_HDMI.jpeg', namabarang: 'Kabel HDMI', merekbarang: 'Vention'),
          CardItem(ImageBarang: 'assets/image/Kabel_Power.jpeg', namabarang: 'Kabel Power', merekbarang: 'Howell'),
          CardItem(ImageBarang: 'assets/image/Kabel_VGA.jpeg', namabarang: 'Kabel VGA', merekbarang: 'Netline'),
          CardItem(ImageBarang: 'assets/image/Laptop_Lenovo.jpeg', namabarang: 'Laptop', merekbarang: 'Lenovo'),
          CardItem(ImageBarang: 'assets/image/Layar_Proyektor.jpeg', namabarang: 'Proyektor', merekbarang: 'Infokus'),
          CardItem(ImageBarang: 'assets/image/Obeng_Listrik.jpeg', namabarang: 'Obeng Listrik', merekbarang: 'Max Power'),
          CardItem(ImageBarang: 'assets/image/Tv.jpeg', namabarang: 'Televisi', merekbarang: 'Samsung'),
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String ImageBarang;
  final String namabarang;
  final String merekbarang;

  CardItem({required this.ImageBarang, required this.namabarang, required this.merekbarang});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          leading: Image.asset(ImageBarang.toString(), fit: BoxFit.contain,),
          title: Text(namabarang.toString(),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(merekbarang.toString(),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      onTap: (){
        Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>detail(
            namabarang: namabarang, ImageBarang: ImageBarang, merekbarang: merekbarang
        )));
      },
    );
  }
}

