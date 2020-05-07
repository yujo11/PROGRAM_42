import 'package:flutter/material.dart';
import 'package:toodoprogram42/widget/todo_list.dart';

class AboutScreen extends StatefulWidget {
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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
            'ABOUT',
            textAlign: TextAlign.center,
          ),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(40, 50, 40, 50),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
                child: Text(
                  'TOODO',
                  textAlign: TextAlign.center,
                  textScaleFactor: 1.4,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50, 0, 50, 50),
                alignment: Alignment.topLeft,
                child: Text('add\n' + 'done\n' + 'undo\n' + 'remove'),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.topLeft,
                child: Text(
                    'captain | yujo@student.42seoul.kr\ncrew 	| cbaek@student.42seoul.kr\ncrew 	| seongwpa@student.42seoul.kr'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
