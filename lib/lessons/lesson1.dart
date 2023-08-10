import 'package:elearning/lessons/next_topic.dart';
import 'package:flutter/material.dart';

class Lesson1 extends StatefulWidget {
  String img;
  Lesson1(this.img);

  @override
  State<Lesson1> createState() => _Lesson1();
}

class _Lesson1 extends State<Lesson1> {
  List<String> sourceArray = [
    'Define chemical bonding',
    'State why chemical bonding occur',
    'Name types of bonding'
  ];
  List<String> destinationArray = [];

  void addItem() {
    if (sourceArray.isNotEmpty) {
      setState(() {
        destinationArray.add(sourceArray.removeAt(0));
      });
    }
  }

  void navigateToNextScreen() {
    if (sourceArray.isEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NextTopic()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        centerTitle: true,
        title: Text(widget.img),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'What will i learn',
              style: TextStyle(fontSize: 28),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: destinationArray.map((item) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item,
                        style: TextStyle(fontSize: 24),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          if (sourceArray.isEmpty)
            ElevatedButton(
              onPressed: navigateToNextScreen,
              child: Text('Next Topic'),
            )
          else
            ElevatedButton(
              onPressed: addItem,
              child: Text('Tap to continue'),
            ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
