import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
class QrCodeScanner extends StatefulWidget {
  const QrCodeScanner({Key key}) : super(key: key);

  @override
  _QrCodeScannerState createState() => _QrCodeScannerState();
}

class _QrCodeScannerState extends State<QrCodeScanner> {
  ScanResult qr_result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Scan page'),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("result",style: TextStyle(fontSize: 20),),
            SizedBox(height: 20,),
            MaterialButton(
              onPressed: ()async{
                ScanResult ScannedResult = await BarcodeScanner.scan();
              print(ScannedResult);
              setState(() {
                qr_result = ScannedResult;
              });
            },
              child: Text('Open Scanner',style:
              TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.blue, width: 3.0),
                  borderRadius: BorderRadius.circular(20.0)),

            ),

          ],
        ),

      ),
    );
  }
}
