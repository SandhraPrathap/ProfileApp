import 'package:flutter/material.dart';

class Blue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
        Row(children: [Text("Email:"), Text("sandhraprathap@gmail.com")]),
        Row(
          children: [Text("ph.no"), Text("7306461061")],
        )
      ])),
    );
  }
}
