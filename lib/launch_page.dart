import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LaunchPage extends StatelessWidget {
  static String tag = 'launch-page';

  @override
  Widget build(BuildContext context) {

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'SELAMAT DATANG',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final logo = Hero(
      tag: 'logo',
      child: Padding(
        padding: EdgeInsets.all(80.50),
        child: CircleAvatar(
          radius: 100.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/logo.jpg'),
        ),
      ),
    );


    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Pusat belanja online khas oleh-oleh Lampung '
            '-Semua ada, Ada semua-',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );


    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.black87,
          Colors.black87,
        ]),
      ),
      child: Column(
        children: <Widget>[logo, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}