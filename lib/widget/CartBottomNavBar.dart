import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return BottomAppBar(
      child: Container(
        padding:  EdgeInsets.symmetric(horizontal: 15),
         height: 70,
         child: Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(

            children: [
              Text("Total: ", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, //color: Colors.red,
              ),),
              SizedBox(
                width: 15,
              ),
             
              Text("\Rp 1.377.000", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Colors.red,
              ),
              ),
            ],
          ),
          ElevatedButton(onPressed: (){},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.brown),
            padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15, horizontal:20, ),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          ),
           child: Text("Beli", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),),
         ],
           
         ),
         
      ),
    );
  }
}