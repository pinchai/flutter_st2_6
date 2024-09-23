import 'package:flutter/material.dart';
import 'dart:convert';  // To use jsonDecode
import 'package:http/http.dart' as http;

void main(){
  runApp(Button());
}

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Themed App',
      darkTheme: ThemeData(),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GridView Widget"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 0.1,
          children: List.generate(20, (index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://picsum.photos/10${index}/100"),
                    fit: BoxFit.cover,
                  ), //DecorationImage
                  border: Border.all(
                    color: Colors.white10,
                    width: 8,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
