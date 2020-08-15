import 'package:flutter/material.dart';

class ContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Contact Me"),
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5, 0),
                    color: Colors.yellow,
                    blurRadius: 10,
                  )
                ],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("image/dino.jpg"),
                ),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.green,
                ),
              ),
              height: 60,
              width: 60,
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
