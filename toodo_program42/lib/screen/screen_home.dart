import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = List<String>.generate(7, (index) => "Item - $index");

  final teController = TextEditingController(
    text: "good",
  );

  @override
  void dispose() {
    teController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView Handle Items")),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.all(10),
              height: 70,
              alignment: Alignment(0, 0),
              color: Colors.orange,
              child: Text(
                "To remove an item, swipe the tile to the right or tap the trash icon.",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Dismissible(
                  key: Key(item),
                  direction: DismissDirection.startToEnd,
                  child: ListTile(
                    title: Text(item),
                    trailing: IconButton(
                      icon: Icon(Icons.delete_forever),
                      onPressed: () {
                        setState(() {
                          items.removeAt(index);
                        });
                      },
                    ),
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      items.removeAt(index);
                    });
                  },
                );
              },
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 5,
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: <Widget>[
                Text("Inser Data:"),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: teController,
                      onSubmitted: (text) {
                        setState(() {
                          if (teController.text != "") {
                            items.add(teController.text);
                          }
                        });
                        teController.clear();
                      },
                    ),
                  ),
                ),
                RaisedButton(
                  child: Text("Insert"),
                  onPressed: () {
                    setState(() {
                      if (teController.text != "") {
                        items.add(teController.text);
                      }
                    });
                    teController.clear();
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
