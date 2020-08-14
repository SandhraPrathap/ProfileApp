import 'package:flutter/material.dart';

class ContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Contact Me"),
            Container(
              child: Image.asset("image/dino.jpg"),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.green,
                ),
              ),
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.mail),
                    Text("E-Mail :",
                        style: TextStyle(fontSize: 24, color: Colors.purple)),
                    Text("dino@dino.mail",
                        style: TextStyle(fontSize: 18, color: Colors.green)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone),
                  Text("Phone :",
                      style: TextStyle(fontSize: 24, color: Colors.purple)),
                  Text("1234567890",
                      style: TextStyle(fontSize: 18, color: Colors.green)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
