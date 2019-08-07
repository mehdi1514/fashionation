import 'package:flutter/material.dart';
import './display.dart';
import 'package:page_transition/page_transition.dart';

List<List<Color>> allColors = [
  [],
  [],
  []
];

class DressUpPage extends StatefulWidget {
  @override
  _DressUpPageState createState() => _DressUpPageState();
}

class _DressUpPageState extends State<DressUpPage> {
  List<Map<String, dynamic>> jeans = [
    {'color': 'Black', 'check': false, 'colorcode': Color(0xff000000)},
    {'color': 'Grey', 'check': false, 'colorcode': Color(0xff71757a)},
    {'color': 'Navy Blue', 'check': false, 'colorcode': Color(0xff010b35)},
    {'color': 'Dark Brown', 'check': false, 'colorcode': Color(0xff40321e)},
    {'color': 'Cream', 'check': false, 'colorcode': Color(0xffe0b255)},
    {'color': 'Dark Green', 'check': false, 'colorcode': Color(0xff033d01)}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 23.0, horizontal: 25.0),
            child: Text(
              "What color pants do you have?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.04, fontFamily: 'Marker'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: jeans.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(jeans[index]['color']),
                    leading: CircleAvatar(
                      backgroundColor: jeans[index]['colorcode'],
                    ),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            jeans[index]['check'] = !jeans[index]['check'];
                            if (jeans[index]['check'] == false) {
                              allColors[0].remove(jeans[index]['colorcode']);
                            }else{
                              allColors[0].add(jeans[index]['colorcode']);
                            }
                            
                          });
                          debugPrint(jeans[index]['check'].toString());
                        },
                        child: Icon(jeans[index]['check']
                            ? Icons.check_circle
                            : Icons.check_circle_outline)));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 5.0),
            child: GestureDetector(
              onTap: () => Navigator.push(context,
                  PageTransition(child: DressUpPage2(), type: PageTransitionType.rightToLeft)),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.10,
                width: MediaQuery.of(context).size.width*0.5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text("Done",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height*0.05,
                        fontFamily: 'Marker',
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DressUpPage2 extends StatefulWidget {
  @override
  _DressUpPage2State createState() => _DressUpPage2State();
}

class _DressUpPage2State extends State<DressUpPage2> {

  List<Map<String, dynamic>> shirts = [
    {'color': 'Black', 'check': false, 'colorcode': Color(0xff000000)},
    {'color': 'Grey', 'check': false, 'colorcode': Color(0xff71757a)},
    {'color': 'Navy Blue', 'check': false, 'colorcode': Color(0xff010b35)},
    {'color': 'Dark Brown', 'check': false, 'colorcode': Color(0xff40321e)},
    {'color': 'Cream', 'check': false, 'colorcode': Color(0xffe0b255)},
    {'color': 'Dark Green', 'check': false, 'colorcode': Color(0xff033d01)}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 23.0, horizontal: 25.0),
            child: Text(
              "What color shirts do you have?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.04, fontFamily: 'Marker'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: shirts.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(shirts[index]['color']),
                    leading: CircleAvatar(
                      backgroundColor: shirts[index]['colorcode'],
                    ),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            shirts[index]['check'] = !shirts[index]['check'];
                            if (shirts[index]['check'] == false) {
                              allColors[1].remove(shirts[index]['colorcode']);
                            }else{
                              allColors[1].add(shirts[index]['colorcode']);
                            }
                          });
                          debugPrint(shirts[index]['check'].toString());
                        },
                        child: Icon(shirts[index]['check']
                            ? Icons.check_circle
                            : Icons.check_circle_outline)));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 5.0),
            child: GestureDetector(
              onTap: () => Navigator.push(context,
                  PageTransition(child: DressUpPage3(), type: PageTransitionType.rightToLeft)),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.10,
                width: MediaQuery.of(context).size.width*0.5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text("Done",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height*0.05,
                        fontFamily: 'Marker',
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DressUpPage3 extends StatefulWidget {
  @override
  _DressUpPage3State createState() => _DressUpPage3State();
}

class _DressUpPage3State extends State<DressUpPage3> {

  List<Map<String, dynamic>> shoes = [
    {'color': 'Black', 'check': false, 'colorcode': Color(0xff000000)},
    {'color': 'Grey', 'check': false, 'colorcode': Color(0xff71757a)},
    {'color': 'Navy Blue', 'check': false, 'colorcode': Color(0xff010b35)},
    {'color': 'Dark Brown', 'check': false, 'colorcode': Color(0xff40321e)},
    {'color': 'Cream', 'check': false, 'colorcode': Color(0xffe0b255)},
    {'color': 'Dark Green', 'check': false, 'colorcode': Color(0xff033d01)}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 23.0, horizontal: 25.0),
            child: Text(
              "What color shoes do you have?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.04, fontFamily: 'Marker'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: shoes.length,
              itemBuilder: (context, index) {
                return ListTile(
                    title: Text(shoes[index]['color']),
                    leading: CircleAvatar(
                      backgroundColor: shoes[index]['colorcode'],
                    ),
                    trailing: GestureDetector(
                        onTap: () {
                          setState(() {
                            shoes[index]['check'] = !shoes[index]['check'];
                            if (shoes[index]['check'] == false) {
                              allColors[2].remove(shoes[index]['colorcode']);
                            }else{
                              allColors[2].add(shoes[index]['colorcode']);
                            }
                          });
                          debugPrint(shoes[index]['check'].toString());
                        },
                        child: Icon(shoes[index]['check']
                            ? Icons.check_circle
                            : Icons.check_circle_outline)));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 5.0),
            child: GestureDetector(
              onTap: () {
                print(allColors);
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return DisplayPage(allColors);
                }));
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.10,
                width: MediaQuery.of(context).size.width*0.5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text("Done",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height*0.05,
                        fontFamily: 'Marker',
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}