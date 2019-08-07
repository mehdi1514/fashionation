import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import './dressingtype.dart';
import 'package:page_transition/page_transition.dart';
import './faceshapeselect.dart';
import './settings.dart';
import './helpmeshop.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scrollController = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: scrollController,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "FASHOINATION",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Marker",
                fontSize: 26.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DressingType())),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Image.asset(
                        "images/1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Dress me up",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontFamily: 'Marker'),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: FaceShapePage())),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Image.asset(
                        "images/2.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "hairstyle",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontFamily: 'Marker'),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Loader())),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Image.asset(
                        "images/3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "help me shop",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontFamily: 'Marker'),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () => Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: SettingsPage())),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0)),
                      child: Image.asset(
                        "images/4.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Settings",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontFamily: 'Marker'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
