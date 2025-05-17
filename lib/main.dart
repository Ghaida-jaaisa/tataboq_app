import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo ,
      appBar: AppBar(
        title: Text("Tataboq App By Ghaida"),
        centerTitle: true,
      backgroundColor: Colors.indigo[800],),
      body: ImagePage(),
    ),
  ));
}


/*----*/
//

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {

  int leftImageNumber = 4;
  int rightImageNumber = 6;

  void changeImage() {
    leftImageNumber = Random().nextInt(8) + 1 ;
    rightImageNumber = Random().nextInt(8) + 1 ;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
              leftImageNumber == rightImageNumber ?  "You Win ... " :  "Try Again .. "
              , style: TextStyle(fontSize:42.0 , color: Colors.white)) ,
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset("images/image-${leftImageNumber}.png"),
                  ) ,) ,
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset("images/image-${rightImageNumber}.png"),
                    ))
              ],
            ),
          ) ,
          ElevatedButton(
              onPressed: () {
                setState(() {
                 changeImage();
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                    Icons.refresh ,
                    size: 40.0,),
              )
          )
        ]
    );
  }
}
