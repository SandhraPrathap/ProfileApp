import 'package:flutter/material.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        flag = !flag;
      }),
      body: Container(
        color: flag ? Colors.deepPurple : Colors.yellow,
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
