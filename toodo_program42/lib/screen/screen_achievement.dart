import 'package:flutter/material.dart';
import 'package:toodoprogram42/widget/todo_list.dart';

class AchievementScreen extends StatefulWidget {
  _AchievementScreenState createState() => _AchievementScreenState();
}

class _AchievementScreenState extends State<AchievementScreen> {
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
            'ACHIEVEMENT',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
