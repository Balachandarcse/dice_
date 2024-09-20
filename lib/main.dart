import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp( const dice());
}

class dice extends StatefulWidget {
  const dice({super.key});
  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {
  int left=1;
  int right=1;
  void change()
  {
    setState(() {
      left=Random().nextInt(6) + 1;
      right=Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent[200],
          title: Center(
            child: Text('Dice App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
        ),
        backgroundColor: Colors.blueAccent,
        body: SafeArea(child:
        Center(
          child:
          Row(
            children: [
              Expanded(
                child:
                TextButton(
                  onPressed: ()
                  {
                    change();
                  },
                  child: Image(image:
                  AssetImage('images/dice$left.png')
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: ()
                  {
                    change();
                  },
                  child: Image(image:
                  AssetImage('images/dice$right.png')
                  ),
                ),
              ),
            ],
          ),
        ),
        ),

      ),
    );
  }
}

