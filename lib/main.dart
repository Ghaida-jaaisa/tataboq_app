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
class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    var leftImageNumber = 4;
    var rightImageNumber = 6;


    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("Try Again", style: TextStyle(fontSize:42.0 , color: Colors.white)) ,
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                  child: TextButton(
                      child: Image.asset("images/image-${leftImageNumber}.png") ,
                       onPressed: () {
                      //  print("Pressed");
                       },) ,) ,
              Expanded(
                  child: TextButton(
                      child: Image.asset("images/image-${rightImageNumber}.png") ,
                      onPressed: () {

                      },))
            ],
          ),
        )
    ]
    );
  }
}
