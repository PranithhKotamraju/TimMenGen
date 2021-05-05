import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

void main() {
  runApp(
    Tim(),
  );
}

class Tim extends StatefulWidget {
  @override
  _TimState createState() => _TimState();
}

class _TimState extends State<Tim> {
  int drinkNum = 1;
  int foodNum = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red[500],
          title: Text("Timmi Menu Generator",
          style: TextStyle(

            fontFamily: 'Raleway',
            fontSize: 40,
            fontWeight: FontWeight.bold

          ) ,

          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your Menu for Today :)",

              style: TextStyle(

                  fontFamily:'Raleway',
                  fontSize: 32,
                  fontWeight: FontWeight.bold

              ) ,
            ),
            Row(
              children: [
                Expanded(
                    child: Center(
                        child: Image.asset('images/drink$drinkNum.png'))),
                Expanded(
                    child:
                        Center(child: Image.asset('images/food$foodNum.png'))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      random();
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0) ,
                      color: Colors.red[500],

                    ),
                    child: Center(child: Text("Click Me ", style: TextStyle(

                        fontFamily:'Raleway',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      color: Colors.white,


                    ) ,)),

                    width: 150,
                    height: 50,
                  )),
            )
          ],
        ),
      ),
    );
  }

  void random() {
    drinkNum = Random().nextInt(30) + 1;
    foodNum = Random().nextInt(15) + 1;
  }
}
