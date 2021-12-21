import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      theme: ThemeData(primarySwatch: Colors.purple),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Termini', elements: [
        "Termin1",
        "Termin2",
        "Termin3",
        "Termin4",
        "Termin5",
        "Termin6",
        "Termin7",
        "Termin8",
        "Termin9",
        "Termin10",
        "Termin11",
        "Termin12",
        "Termin13",
        "Termin14",
        "Termin15",
        "Termin16",
        "Termin17",
        "Termin18",
        "Termin19",
        "Termin20",
      ]),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final List<String> elements;
  const MyHomePage({@required this.title, @required this.elements});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: elements.length,
        itemBuilder: (contx, index) {
          print(elements[index]);
          return Card(
            elevation: 4,
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Theme.of(contx).primaryColorDark, width: 3)),
              child: Column(
                children: [
                  Text(
                    elements[index],
                    style: TextStyle(fontSize: 50, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "data i vreme",
                    style: TextStyle(fontSize: 25, color: Colors.black38),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
