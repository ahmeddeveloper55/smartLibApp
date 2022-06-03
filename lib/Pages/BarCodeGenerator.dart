import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
class BarCodeGenerator extends StatefulWidget {
  const BarCodeGenerator({Key key}) : super(key: key);

  @override
  _BarCodeGeneratorState createState() => _BarCodeGeneratorState();
}

class _BarCodeGeneratorState extends State<BarCodeGenerator> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BarCodeGenerator',style: TextStyle(color: Colors.black54),),
        centerTitle: false,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
         child: Column(
           children: [
             Card(
                color: Colors.white,
                 elevation: 10,

                 child: Padding(
                   padding: EdgeInsets.all(16),
                     child: BarcodeWidget(data: controller.text, barcode: Barcode.code128(),width: 200,height: 200,drawText: false,))

             ),
             SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Card(
                  elevation: 6,
                 child: Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: CustomTextFied(context),
                 ),
               ),
             ),
           ],
         ),
        ),
      )

    );

  }
  Widget CustomTextFied(BuildContext context)=>TextField(
    controller: controller,
    onSubmitted: (_)=>setState((){}),
    style: TextStyle(
        fontWeight: FontWeight.bold,
      fontSize: 20,
      color: Colors.black54
    ),
    decoration: InputDecoration(
      hintText: 'enter the data',
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      suffixIcon: IconButton(
        color: Theme.of(context).accentColor,
        icon:Icon(Icons.done,size: 35,),
        onPressed: ()=>setState((){}),
      )

    ),

  );
}
