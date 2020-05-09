import 'package:flutter/material.dart';
import 'package:toodoprogram42/screen/screen_about.dart';
import 'package:toodoprogram42/screen/screen_achievement.dart';
import 'package:toodoprogram42/screen/new_screen_home.dart';
import 'package:toodoprogram42/widget/bottom_bar.dart';

void main() => runApp(TooDo());

class TooDo extends StatefulWidget {
  _TooDoState createState() => _TooDoState();
}

class _TooDoState extends State<TooDo> {
  TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TooDo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              AchievementScreen(),
              AboutScreen(),
            ],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
