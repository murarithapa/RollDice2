import 'dart:math';
import 'package:flutter/material.dart';




class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int imageNo;

  @override
  void initState() {
    super.initState();
    setState(() {
      rollDice();
    });
  }

   rollDice() {
    int random = Random().nextInt(6) + 1;
    setState(() {
      imageNo = random;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black54,
        centerTitle: true,
        title: Text('Dice Roller App',style: TextStyle(
          fontWeight: FontWeight.w300,

        ),),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "img/$imageNo.png",
                width: 100.0,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                color: Colors.indigo,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextButton(
                      onPressed: () => rollDice(),
                      child: Text(

                        'Roll Dice', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,),

                      )),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Text(
                'Develop By Murari',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.orangeAccent),
              )
            ],
          ),
        ),
      ),
    );
  }
}
