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
//                  FlatButton(
//                    child: Text('REMOVE'),
//                    onPressed: () {},
//                  ),
//                  RaisedButton(
//                    child: Text(
//                      'DONE',
//                    ),
//                    onPressed: () {},
//                  ),
                  IconButton(
                      icon: Icon(
                        Icons.assignment_turned_in,
                        color: Colors.green,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.redAccent,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(
                        Icons.replay,
                        color: Colors.yellowAccent,
                      ),
                      onPressed: () {}),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
