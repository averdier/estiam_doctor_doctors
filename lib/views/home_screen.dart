import 'package:flutter/material.dart';
import 'package:estiam_doctor_doctors/views/components/main_drawer.dart';


class MainScreen extends StatelessWidget {

  /// Constructor
  MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Kebab App')
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Text('Kebab App')
          ],
        )
      ),
      drawer: new MainDrawer(),
    );
  }
}