import 'package:book12/Pages/BarCodeGenerator.dart';
import 'package:book12/Pages/Home_page.dart';
import 'package:flutter/material.dart';

import 'QrCodeGenerator.dart';
import 'QrCodeScanner.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('QrCode'),
       centerTitle: false,
     ),
      body:Container(
        padding: EdgeInsets.all(16),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Image(
                image : NetworkImage("https://media.istockphoto.com/vectors/qr-code-scan-phone-icon-in-comic-style-scanner-in-smartphone-vector-vector-id1166145556"),
            ),
            customButton('scan Qr Code',QrCodeScanner()),
            SizedBox(height: 20,),
            customButton('Generate Qr Code',QrCodeGenerator()),


          ],
        ),
      )
    );
  }

  Widget customButton(String s, Widget widget) {
    return MaterialButton(
      padding: EdgeInsets.all(10),
        onPressed:() async {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => widget));
        },
    child: Text(
      s,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          width: 2.0,
          color: Colors.blue,
        )
      ),
    );
        
        
  }
}
