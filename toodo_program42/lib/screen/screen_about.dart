import 'package:flutter/material.dart';

// TODO: 중복제거!!
class AboutScreen extends StatelessWidget {
  final logoText = [
    {
      'charactor': 'T',
      'color': Colors.white,
    },
    {
      'charactor': 'O',
      'color': Colors.blue[800],
    },
    {
      'charactor': 'O',
      'color': Colors.red[800],
    },
    {
      'charactor': 'D',
      'color': Colors.green[600],
    },
    {
      'charactor': 'O',
      'color': Colors.yellow[400],
    },
  ];
  List<Widget> _buildLogoString() {
    final logoString = <Widget>[];
    for(final lc in logoText) {
      logoString.add(Text(lc['charactor'],
            textScaleFactor: 1.4,
            style: TextStyle(color: lc['color'], fontWeight: FontWeight.bold)));
    }
    return logoString;
  }

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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildLogoString(),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50, 0, 50, 50),
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Text('●',
                                textScaleFactor: 1.4,
                                style: TextStyle(
                                    color: Colors.blue[800],
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text('add'),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Text('●',
                                textScaleFactor: 1.4,
                                style: TextStyle(
                                    color: Colors.green[600],
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text('done'),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Text('●',
                                textScaleFactor: 1.4,
                                style: TextStyle(
                                    color: Colors.yellow[400],
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text('undo'),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Text('●',
                                textScaleFactor: 1.4,
                                style: TextStyle(
                                    color: Colors.red[800],
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text('remove'),
                        ],
                      ),
                    ),
                  ],
                ),
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
