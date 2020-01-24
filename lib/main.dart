import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Column(
        children: <Widget>[
          Text("Pessoas: 0000",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          Text("Poode entrar...",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
        ],
      )));
}
