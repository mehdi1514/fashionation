import 'dart:async';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Loader extends StatefulWidget {
  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {
  @override
  void initState() {
    super.initState();
    goToRecommends();
  }

  void goToRecommends() async {
    await Future.delayed(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
                type: PageTransitionType.fade, child: Recommendations())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
              Text(
                "Analysing Wardrobe",
                style: TextStyle(
                    color: Colors.black, fontFamily: "Marker", fontSize: 30.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Recommendations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Our recommendations",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Marker",
                fontSize: 25.0,
              ),
            ),
          ),
          RecommendCard("images/amazon.jpg"),
          RecommendCard("images/flipkart.jpeg"),
          RecommendCard("images/myntra.jpg"),
        ],
      ),
    ));
  }
}

class RecommendCard extends StatelessWidget {
  RecommendCard(this.imgUrl);
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Card(
        elevation: 2.0,
        child: Column(
          children: <Widget>[
            Image.asset(
              imgUrl,
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                """jkdhfjjsdfjdjfd,fdkjjfdjfljdjflkdjflsdnfvjdsnvkjfdvhjvnfkjdvdnvjkdvsdvbjskdjvldnvkdv
                  jfhkjdfsahdksjdkshfkjfhdksjfhdsjkfhsdkjvhdjkshdkjhvkjdhvdsvbkjvhdjvkdvsdkjvdskv""",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: RaisedButton(
                  splashColor: Colors.white,
                  elevation: 10.0,
                  onPressed: () {},
                  color: Colors.black,
                  child: Text(
                    "Look for this online",
                    style: TextStyle(fontFamily: "Marker", color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
