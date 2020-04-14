import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SecondPageState();
}

class SecondPageState extends State<Second> {
  bool _hasMessage = false;

  String _firstname;
  String _lastname;
  String _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is the second screen"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10.0),
              alignment: Alignment.centerLeft,
              child: Text(
                "Firstname",
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "John"),
              onChanged: (text) => {
                setState(() {
                  _firstname = text;
                })
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                "Lastname",
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Doe"),
              onChanged: (text) => {
                setState(() {
                  _lastname = text;
                })
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              alignment: Alignment.centerLeft,
              child: Text(
                "E-Mail",
                style: TextStyle(fontSize: 20),
              ),
            ),
            TextField(
              decoration: InputDecoration(hintText: "john.doe@gmail.com"),
              onChanged: (text) => {
                setState(() {
                  _email = text;
                })
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              child: (this._hasMessage
                  ? Text(
                      "Das ist eine Fehlermeldung!",
                      style: TextStyle(color: Colors.red),
                    )
                  : null),
            ),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    child: RaisedButton(
                      color: Colors.green,
                      textColor: Colors.white,
                      child: Text("Save"),
                      onPressed: (_firstname != null && _lastname != null && _email != null
                          ? () => {
                                setState(() {
                                  _hasMessage = false;
                                })
                              }
                          : null),
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        child: Text("Cancel")),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
