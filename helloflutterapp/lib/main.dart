import 'package:flutter/material.dart';

void main() {
  runApp(HelloFlutterApp());
}

class HelloFlutterApp extends StatefulWidget {
  @override
  _HelloFlutterAppState createState() => _HelloFlutterAppState();
}

String englishGreeting = "Hello Flutter";
String spanishGreeting = "Hola Flutter";

class _HelloFlutterAppState extends State<HelloFlutterApp> {
  //Default greeting is in English language
  String displayText = englishGreeting;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:const Text("Hello Flutter App"),
          leading: const Icon(Icons.home),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                //Updating greeting language in setState method
                setState(() {
                  displayText = displayText == englishGreeting
                      ? spanishGreeting
                      : englishGreeting;
                });
              },
            )
          ],
        ),
        body: Center(
          child: Text(
            displayText,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}