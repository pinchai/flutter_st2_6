import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Themed App',
      // darkTheme: ThemeData.dark(),
      // themeMode: ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
            //leading: Icon(Icons.account_circle_rounded),
            //backgroundColor: Colors.black,
            title: const Text('Legend Cinema'),
            actions: [
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {
                      print(12);
                    },
                    child: const Icon(
                      Icons.chat,
                      size: 26.0,
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.notification_add,
                      size: 26.0,
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.qr_code,
                      size: 26.0,
                    ),
                  )),
            ]),
        drawer: const Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                accountName: Text(
                  "Zorin",
                  style: TextStyle(color: Colors.yellow),
                ),
                accountEmail: Text("Zorin@mail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage("https://picsum.photos/200"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.supervised_user_circle),
                title: Text("Profile"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.all(20),
              reverse: false,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.network(
                      "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/0b31dc63-3a5c-40be-992d-ba9d2cfa02f8.jpeg",
                      width: 400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.network(
                      "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/0b31dc63-3a5c-40be-992d-ba9d2cfa02f8.jpeg",
                      width: 400,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Image.network(
                      "https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/0b31dc63-3a5c-40be-992d-ba9d2cfa02f8.jpeg",
                      width: 400,
                    ),
                  )
                  // Image.network("https://coolbeans.sgp1.digitaloceanspaces.com/legend-cinema-prod/141cc59e-a154-4588-9e98-9b54a8dadebf.jpeg"),
                ],
              ),
            ),
            GridView.count(
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
            )
          ],
        ),
      ),
    );
  }
}
