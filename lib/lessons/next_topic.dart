
import 'package:flutter/material.dart';
class NextTopic extends StatefulWidget {
  @override
  State<NextTopic> createState() => _NextTopic();
}

class _NextTopic extends State<NextTopic> {
  List<String> sourceArray = [
    'Introduction',
    'You are familiar with the chemical formula of water, which is H2O. You can easily tell that two Hydrogen atoms and one Oxygen atom combine to form water. The Hydrogen and Oxygen atoms are joined together by chemical bonds in a process called chemical bonding. A chemical bond is the attraction between stable atoms.You are familiar with the chemical formula of water, which is H2O. You can easily tell that two Hydrogen atoms and one Oxygen atom combine to form water. The Hydrogen and Oxygen atoms are joined together by chemical bonds in a process called chemical bonding. A chemical bond is the attraction between stable atoms.','So what is Chemical Bonding?','Chemical bonding is the joining of two or more atoms together to attain stability','***Remember, in a chemical reaction one or more substances called reactants are converted into new substance or substances called products. To form the products atoms join together. So a chemical bonding occurs as a result of a chemical reaction.***','Why does chemical bonding and chemical reaction take place?','Chemical bonding and chemical reactions occur so that atoms:','attain stability','attain low potential energy','experience more attractive forces','Types of Chemical Bonding ','There are three types of chemical bonding namely: ','-Metallic bonding','- Ionic bonding','and','- Covalent bonding','Congratulations! you completed lesson 1'
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
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Lets get started',
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