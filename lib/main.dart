import 'package:flutter/material.dart';
import 'package:store/pages/cartpage.dart';
import 'package:store/pages/home.dart';
import 'package:store/pages/itempage.dart';
import 'package:store/pages/kategorisepatu.dart';
import 'package:store/pages/taspage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
       title: "Paradise Store",
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(205, 239, 237, 234),
       ),
       routes: {
        "/" : (context) => HomePage(),
         "cartPage" : (context) => CartPage(),
          "itemPage" : (context) => itempage(),
          "tasPage" : (context) => taspage(),
           "sepatuPage" : (context) => sepatupage(),
        
       },
    );
   

  }
}

