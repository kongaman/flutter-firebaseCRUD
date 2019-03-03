import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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

  String textName, textBeschreibung;
  double textPreis;

  getNameData(name) {
    textName = name;
    print(textName);
  }
  getBeschreibungData(beschreibung) {
    textBeschreibung = beschreibung;
    print(textBeschreibung);
  }
  getPreisData(preis) {
    textPreis = double.parse(preis);
    print(textPreis);
  }

  createData(){
    print("create");
  }

  updateData(){
    print("update");
  }

  readData(){

    DocumentReference dRef = Firestore.instance.collection("Gerichte").document(textName);
    dRef.get().then((datasnapshot) {
      print(datasnapshot.data["Name"]);
      print(datasnapshot.data["Beschreibung"]);
      print(datasnapshot.data["Preis"]);
    });


  }

  deleteData(){
    print("delete");
  }


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
                getNameData(name);
              },
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Beschreibung"
              ),
              onChanged: (String beschreibung) {
                getBeschreibungData(beschreibung);
              },
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: "Preis"
              ),
              onChanged: (String preis) {
                getPreisData(preis);
              },
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: RaisedButton(
                      color: Colors.green,
                      child: Text("Create"),
                      onPressed: (){
                        createData();
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: RaisedButton(
                      color: Colors.orange,
                      child: Text("Update"),
                      onPressed: (){
                        updateData();
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: RaisedButton(
                      child: Text("Read"),
                      onPressed: (){
                        readData();
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 0.0),
                    child: RaisedButton(
                      color: Colors.red,
                      child: Text("Delete"),
                      onPressed: (){
                        deleteData();
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

