import 'package:flutter/material.dart';

class ContactMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.mail),
                  Text("e-Mail : "),
                  Text("dino@dino.mail"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.phone),
                  Text("Phone :"),
                  Text("1234567890"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
