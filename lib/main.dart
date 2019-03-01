import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue[800],
      accentColor: Colors.cyan[600],
    ),
    home: MyApp(),
  )
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase CRUD"),
      ),
      body: Padding(
          padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "Name"
              ),
              onChanged: (String name) {

              },
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Beschreibung"
              ),
              onChanged: (String beschreibung) {

              },
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Preis"
              ),
              onChanged: (String preis) {

              },
            ),
          ],
        ),
      ),
    );
  }
}

