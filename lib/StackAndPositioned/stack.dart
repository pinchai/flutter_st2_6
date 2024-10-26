import 'package:flutter/material.dart';

void main() {
  runApp(StackAndPositioned());
}

class StackAndPositioned extends StatelessWidget {
  const StackAndPositioned({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.add_box),
          title: Text("Stack And Positioned"),
          actions: [
            Icon(Icons.qr_code_rounded),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              MarioCard("Super Mario"),
              MarioCard("Luigi"),
            ],
          ),
        ),
      ),
    );
  }

  Stack MarioCard(String name){
    return Stack(
      children: [
        Container(
          height: 300,
          width: 400,
          // color: Colors.red,
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Container(
            height: 200,
            width: 390,
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${name}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                Text("Super Mario", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 00,
          right: 0,
          child: Container(
            height: 300,
            width: 200,
            decoration: BoxDecoration(
              // color: Colors.yellow,
              image: const DecorationImage(
                fit: BoxFit.contain,
                image: NetworkImage(
                  // 'https://cdn.pixabay.com/photo/2017/09/01/00/15/png-2702691_1280.png',
                  'https://purepng.com/public/uploads/large/purepng.com-super-mariomariosuper-mariovideo-gamefictional-characternintendoshigeru-miyamotomario-franchise-17015286383789a9am.png',
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
