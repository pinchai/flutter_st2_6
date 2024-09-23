import 'package:flutter/material.dart';

void main() => runApp(Button());

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Themed App',
      darkTheme: ThemeData(),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: AlertDialog(
                title: Text('Are You Sure ?'),           // To display the title it is optional
                content: Text('Alert Dialog'),   // Message which will be pop up on the screen
                // Action widget which will provide the user to acknowledge the choice
                actions: [
                  TextButton(                     // FlatButton widget is used to make a text to work like a button
                    onPressed: () {},             // function used to perform after pressing the button
                    child: Text('CANCEL', style: TextStyle(color: Colors.red),),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('ACCEPT'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
