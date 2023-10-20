import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:store/widget/appbarwidget.dart';

import 'package:store/widget/tasnavbar.dart';

class taspage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            AppBarWidget(),
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.asset(
                "images/tas.png",
                height: 300,
//width: 100,
              ),
            ),
            Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: 30,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 60, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding: EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => Icon(
                                Icons.star_purple500,
                                color: Colors.deepOrangeAccent,
                              ),
                              onRatingUpdate: (index) {},
                            ),
                            Text(
                              "\Rp 250.000",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold, 
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(padding: 
                      EdgeInsets.only(top: 10, bottom: 20,
                      ),
                      child: 
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                        children: [
                          Text("Sovia Bag",
                          style: TextStyle(fontSize: 28,
                          fontWeight: FontWeight.bold),
                           ),
                           Container(
                            width: 90,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(mainAxisAlignment: 
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(CupertinoIcons.minus, color: Colors.white, size:  20,),
                              Text("1", style:  TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                              Icon(CupertinoIcons.plus, color: Colors.white, size:  20,),
                            ],
                            ),
 

                           ),
                        ],
                      ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text("Langkah lebih cepat, loncat lebih tinggi. Rasakan kenyamanan maksimal dengan sepatu olahraga kami! Bawa permainan Anda ke level berikutnya dengan sepatu olahraga kami. Performa yang tak tertandingi dalam tiap langkah.", style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.justify,),
                      ),

                      Padding(padding: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Pre-Order: ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.justify,
                          ),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Icon(CupertinoIcons.clock, color: Colors.red,) ,),

                          Text("3 hari", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.justify,
                          ),
                          

                          
                        ],
                      ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        
      ),
      bottomNavigationBar: tasnavbar(),
    ); 
  }
}
