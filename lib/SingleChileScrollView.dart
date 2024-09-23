import 'package:flutter/material.dart';

void main() => runApp(Button());

Container container() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://miro.medium.com/v2/resize:fit:1400/format:webp/1*nvkbWPLb2ODatfFgiF0SbA.jpeg")),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade600, spreadRadius: 1, blurRadius: 10),
          // no shadow color set, defaults to black
        ]),
    height: 200,
    width: double.infinity,
    margin: EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
            Icon(
              Icons.star,
              color: Colors.amber,
            ),
          ],
        ),
      ],
    ),
  );
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
          title: const Text("Button Widget"),
          actions: const [
            Padding(padding: EdgeInsets.all(10), child: Icon(Icons.qr_code)),
            Padding(
                padding: EdgeInsets.all(20),
                child: Icon(Icons.notification_add)),
          ],
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 150,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade600,
                              spreadRadius: 1,
                              blurRadius: 5)
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 150,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade600,
                              spreadRadius: 1,
                              blurRadius: 5)
                        ]),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 150,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 150,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 150,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 150,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 5)
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
