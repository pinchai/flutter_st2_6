import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Themed App',
      darkTheme: ThemeData(),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expended"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.qr_code_rounded),
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/c22d5817-ca3c-4e6d-b119-68fd0f15f5f3.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Promotion",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "20%",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 50,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("See more..."),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/c22d5817-ca3c-4e6d-b119-68fd0f15f5f3.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Promotion",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "20%",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 50,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("See more..."),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
