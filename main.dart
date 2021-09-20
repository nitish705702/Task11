import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 // class MyApp extends StatelessWidget {
  String msg = 'Flutter RaisedButton Example';

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter app'),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(msg,
                  style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic),),
                RaisedButton(
                  child: Text("Click Here", style: TextStyle(fontSize: 20),),
                  onPressed: _changeText,
                  color: Colors.red,
                  textColor: Colors.yellow,
                  padding: EdgeInsets.all(8.0),
                  splashColor: Colors.grey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _changeText() {
    setState(() {
      if (msg.startsWith('F')) {
        msg = 'Show your creativity (Optional: Animations,Responsive UI,DB connection ,etc)';
      } else {
        msg = 'Thank you';
      }
    });
  }
}