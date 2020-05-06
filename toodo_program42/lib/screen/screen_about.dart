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
        body: Column(
          children: <Widget>[
            FractionallySizedBox(
              widthFactor: 1,
              child: Text('TOODO'),
            ),
            FractionallySizedBox(
              widthFactor: 1,
              child: Text('add\n' + 'done\n' + 'undo\n' + 'remove'),
            ),
            FractionallySizedBox(
              widthFactor: 1,
              child: Text(
                  'captain | yujo@student.42seoul.kr\ncrew 	| cbaek@student.42seoul.kr\ncrew 	| seongwpa@student.42seoul.kr'),
            ),
          ],
        ),
      ),
    );
  }
}
