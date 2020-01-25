import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Contador de Pessoas", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;


  String _infoText = "pode entrar!!!";

  void _changePeople(int delta) {
    setState(() {
      _people += delta;
      if(_people <= -5) {
        _infoText = 'StrangerThings?';
      } else if (_people < 0) {
        _infoText = 'Mundo invertido!?';
      } else if (_people <= 5){
        _infoText = 'Pode entrar';
      } else if (_people <= 10) {
        _infoText = 'Lotado!';
      } else if (_people <= 16){
        _infoText = 'Lotado!!!!!';
      } else if (_people <= 18) {
        _infoText = 'Já disse que ta Lotado!!';
      } else if (_people <= 25){
        _infoText = 'Vou chamar a polícia!';
      } else if (_people <= 34) {
        _infoText = 'FDP!!!';
      } else {
        _infoText = 'Vai ti embora!!';
      }

    });
  }



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurante.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Pessoas no restaurante: $_people",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25)),
            Text("$_infoText",
                style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: FlatButton(
                    child: Text("+1",
                        style: TextStyle(color: Colors.black, fontSize: 30)),
                    onPressed: () {
                      _changePeople(1);
                      debugPrint("+1");
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: FlatButton(
                    child: Text("-1",
                        style: TextStyle(color: Colors.black, fontSize: 30)),
                    onPressed: () {
                      _changePeople(-1);
                      debugPrint("-1");
                    },
                  ),
                ),
              ],
            ),

          ],
        )
      ],
    );
  }
}
