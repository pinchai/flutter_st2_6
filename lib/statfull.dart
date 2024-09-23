import 'package:flutter/material.dart';

void main() => runApp(TestApp());

class MyApp extends StatelessWidget {
  int current_index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        //leading: const Icon(Icons.account_circle_rounded),
        //leadingWidth: 100,
        title: const Text("Home"),
        // default is 56
        actions: const [Icon(Icons.more_vert)],
        toolbarHeight: 70,
        // default is 56
        toolbarOpacity: 1,
        // backgroundColor: Colors.deepOrange[500],
        // actionsIconTheme: IconThemeData(color: Colors.green, size: 50),
        elevation: 100,
        // shadowColor: Colors.red,
      ),
      drawer: Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Zorin"),
            accountEmail: Text("Zorin@mail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage("https://picsum.photos/200"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              print("Clicked on Home menu");
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
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
          AboutListTile(
            // <-- SEE HERE
            icon: Icon(
              Icons.info,
            ),
            child: Text('About app'),
            applicationIcon: Icon(
              Icons.local_play,
            ),
            applicationName: 'My Cool App',
            applicationVersion: '1.0.25',
            applicationLegalese: '© 2019 Company',
            aboutBoxChildren: [
              ///Content goes here...
            ],
          ),
        ],
      )),
      body: const Center(
        child: Text(
          "BottomNavigationBar",
          style: TextStyle(color: Colors.red, fontSize: 40),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_index,
        onTap: (int index) {
          current_index = index;
          print(current_index);
        },
        backgroundColor: Colors.white,
        iconSize: 14,
        selectedFontSize: 18,
        selectedIconTheme: IconThemeData(color: Colors.blue, size: 30),
        selectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
    ));
  }
}

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  int current_index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        //leading: const Icon(Icons.account_circle_rounded),
        //leadingWidth: 100,
        title: const Text("Home"),
        // default is 56
        actions: const [Icon(Icons.more_vert)],
        toolbarHeight: 70,
        // default is 56
        toolbarOpacity: 1,
        // backgroundColor: Colors.deepOrange[500],
        // actionsIconTheme: IconThemeData(color: Colors.green, size: 50),
        elevation: 100,
        // shadowColor: Colors.red,
      ),
      drawer: Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Zorin"),
            accountEmail: Text("Zorin@mail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage("https://picsum.photos/200"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              print("Clicked on Home menu");
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
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
          AboutListTile(
            // <-- SEE HERE
            icon: Icon(
              Icons.info,
            ),
            child: Text('About app'),
            applicationIcon: Icon(
              Icons.local_play,
            ),
            applicationName: 'My Cool App',
            applicationVersion: '1.0.25',
            applicationLegalese: '© 2019 Company',
            aboutBoxChildren: [
              ///Content goes here...
            ],
          ),
        ],
      )),
      body: Center(
          child: Image.network(
        'https://brandedcambosupply.com/cdn/'
        'shop/files/100_dfdf593d-bc73-4bb5'
        '-8d23-9181d510f628.jpg?v=1717947271',
        width: 200,
        height: 200,
      )
          // child: Image.asset('image/product_2.jpg')
          ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_index,
        onTap: (int index) {
          setState(() {
            current_index = index;
          });
          current_index = index;
          print(current_index);
        },
        backgroundColor: Colors.white,
        iconSize: 14,
        selectedFontSize: 18,
        selectedIconTheme: IconThemeData(color: Colors.blue, size: 30),
        selectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
        ],
      ),
    ));
  }
}

/*
*  Native App
* IOS
* Android
* Huawai
*
* Hybrid
* Flutter
*  android,
*  ios,
*  ipadOS,
*  winform (C#, Java, Python)
*  web(HTML, CSS, JS, PHP, Python)
*
* Dart, OOP -> Flutter
* IDE Android Studio
*
* core I5 ++
* Ram 8BG
* SSD 256GB(25GB)
* ---------------
* 45H
* Dart Basic
*   - variable(DataType)
*   - if_else_elsif
*   - loop (for)
*   - collection or object [], {}, (), [{}], json
*   - function
*   - ** OOP
*   - ** build api (python-flask)
*   - ** work with api (CRUD)
* -------------------Mid term exam (dart+crud+api)
* Screen
* */
//
