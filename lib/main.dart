import 'package:book12/Pages/MainPage.dart';
import 'package:book12/model/ModelClass.dart';
import 'package:book12/providers/ModelProvider.dart';
import 'package:flutter/material.dart';

import 'Pages/Home_page.dart';
import 'Pages/Issued_page.dart';
import 'Pages/SignIN_page.dart';
import 'Pages/SignOut_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_) => ModelProvider()),

      ],
      child : MyApp()
  ));
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => ModelProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home : MainPage(),
        theme: ThemeData.light(),
        initialRoute: "./MainPage",
        routes: {
          "./MainPage" : (context) =>MainPage(),
          "./Home_page" :(context) => Home_page(),
          "./Issued_book" :(context) => Issued_page(),
          "./SignIn" :(context) => SignIN_page(),
          "./SignOut" :(context) => SignOut_page(),
        },
      ),
    );
  }
}







