import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SpanishCounter(),
  ));
}

class SpanishCounter extends StatefulWidget {
  const SpanishCounter({Key? key}) : super(key: key);

  @override
  _SpanishCounterState createState() => _SpanishCounterState();
}

class _SpanishCounterState extends State<SpanishCounter> {
  List<String> snumbers = [
    "uno",
    "dos",
    "tres",
    "cuatro",
    "cinco",
    "seis",
    "siete",
    "ocho",
    "nueve",
    "diez"
  ];
  List<String> enumbers = [
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten"
  ];

  var counter = 0;
  String sdefaultText = "Spanish Number";

  String edefaultText = "English Number";

  void spanish() {
    setState(() {
      if (counter < 10) {
        sdefaultText = snumbers[counter];
        edefaultText = enumbers[counter];
        counter++;
      } else {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Center(child: Text('Spanish Counter')),
      ),
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              sdefaultText,
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "($edefaultText)",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        )),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        onPressed: spanish,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
