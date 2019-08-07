import 'package:flutter/material.dart';
import './hairdisplay.dart';

class HairstylesDisplayPage extends StatefulWidget {
  HairstylesDisplayPage({@required this.displayList});
  final List displayList;

  @override
  _HairstylesDisplayPageState createState() =>
      _HairstylesDisplayPageState(displayList: displayList);
}

class _HairstylesDisplayPageState extends State<HairstylesDisplayPage> {
  _HairstylesDisplayPageState({@required this.displayList});
  List displayList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Recommended hairstyles",
            style: TextStyle(color: Colors.white, fontFamily: "Marker"),
          )),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(displayList.length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HairDisplayPage(
                            imageUrl: displayList[index],
                            imageTag: displayList[index],
                          )));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Image.asset(
                  displayList[index],
                  fit: BoxFit.contain,
                ),
              
            ),
          );
        }),
      ),
    );
  }
}
