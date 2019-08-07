import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Settings", style: TextStyle(color: Colors.white, fontFamily: "Marker"),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: Icon(Icons.add_circle_outline),
                title: Text("Add Clothes"),
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: Icon(Icons.remove_circle),
                title: Text("Remove Clothes"),
              ),
            ),
            Card(
              elevation: 2.0,
              child: ListTile(
                leading: Icon(Icons.edit),
                title: Text("Edit profile"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}