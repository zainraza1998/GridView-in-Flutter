import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  var lst = ["zain", "Saeed", "Hassan"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          children: List.generate(
            lst.length,
            (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.lightBlue,
                  child: Center(child: Text(lst[index])),
                ),
              );
            },
          )

          // Icon(Icons.notifications),
          ),
    );
  }
}
