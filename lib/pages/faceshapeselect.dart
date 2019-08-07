import 'package:flutter/material.dart';
import './hairstylesdisplay.dart';
import 'package:page_transition/page_transition.dart';

class FaceShapePage extends StatefulWidget {
  @override
  _FaceShapePageState createState() => _FaceShapePageState();
}

class _FaceShapePageState extends State<FaceShapePage> {
  List<String> faceShapes = ['Oval', 'Circle', 'Square', 'Triangle', 'Diamond'];
    final List ovalHairstyles = [
    'images/oval1.PNG',
    'images/oval2.PNG',
    'images/oval3.PNG',
  ];

  final List roundHairstyles = [
    'images/round1.PNG',
    'images/round2.PNG',
    'images/round3.PNG',
  ];

  final List squareHairstyles = ['images/square1.PNG'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 23.0, horizontal: 25.0),
            child: Text(
              "What is the shape of your face?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.04,
                  fontFamily: 'Marker'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: faceShapes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 50.0),
                  child: GestureDetector(
                    onTap: () {
                      if(index==0){
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: HairstylesDisplayPage(displayList: ovalHairstyles,)));
                      }else if(index==1){
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: HairstylesDisplayPage(displayList: roundHairstyles,)));
                      }else{
                        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: HairstylesDisplayPage(displayList: squareHairstyles,)));
                      }
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Card(
                        elevation: 3.0,
                        color: Colors.black,
                        child: Text(
                          faceShapes[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Marker",
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
