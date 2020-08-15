import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:profile/contact.dart';

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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          return buttonstate();
        },
        backgroundColor: flag ? Colors.redAccent : Colors.purple,
        label: Text(flag ? "DAY" : "NIGHT"),
        icon: Icon(flag
            ? MaterialCommunityIcons.weather_sunny
            : MaterialCommunityIcons.moon_waning_crescent),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(5),
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(5, 0),
                        blurRadius: 10,
                        spreadRadius: 0,
                        color: Colors.green),
                    BoxShadow(
                        blurRadius: 10,
                        offset: Offset(-5, 0),
                        spreadRadius: 0,
                        color: Colors.blue),
                  ],
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Colors.green, width: 2, style: BorderStyle.solid),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("image/dino.jpg"),
                  ),
                ),
              ),
              Text('Hey there!!I am Sandhra',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'monospace',
                      color: flag ? Colors.yellow : Colors.blue)),
              RaisedButton(
                textColor: Colors.blue,
                disabledColor: Colors.green,
                color: Colors.red,
                child: Text(
                  "Hello",
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactMe(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
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
