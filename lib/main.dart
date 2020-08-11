import 'package:flutter/material.dart';

void main() {
  runApp(Blah());
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  buttonstate() {
    flag = !flag;
    setState(() {});
  }

  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: flag ? Colors.deepPurple : Colors.yellow,
      floatingActionButton: FloatingActionButton(onPressed: buttonstate()),
      body: Container(
        child: Text('Hey there!!I am Sandhra',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'monospace',
                color: flag ? Colors.yellow : Colors.blue)),
      ),
    );
  }
}

class Blah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Profile());
  }
}
