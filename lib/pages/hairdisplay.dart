import 'package:flutter/material.dart';

class HairDisplayPage extends StatelessWidget {
  final String imageUrl;
  final String imageTag;
  HairDisplayPage({this.imageUrl, this.imageTag});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      body: Center(
        child: Image.asset(imageUrl,
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width),
        
      ),
    );
  }
}
