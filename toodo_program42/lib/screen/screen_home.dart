import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      title: 'ToDo List',
      home: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: Text(
            'HOME',
            textAlign: TextAlign.center,
          ),
        ),
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            children: <Widget>[
              SizedBox(
                height: 80.0,
                width: 160.0,
              ),
              Column(
                children: <Widget>[
                  SizedBox(height: 16.0),
                  Text('To Do List'),
                ],
              ),
              TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Today',
                ),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text('123'),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    child: Text('ENxzc'),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
