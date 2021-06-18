import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final image = Hero(
      tag: 'hero',
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/img.jpg'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome User',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final paragraph = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Popularity of flutter is getting higher everyday! If you are thinking about a hybrid app, then most people will suggest to you flutter. I am also going suggest flutter instead of react native. For learning react native you need to learn about react js too. So if you are just starting today then maybe try the flutter first. Learning curve will be much easier than react js. So here the project lists for the flutter...',
        style: TextStyle(fontSize: 15.0, color: Colors.white),
      ),
    );

    final backBtn = TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Container(
        alignment: Alignment.center,
        width: 160,
        child: Text(
          '< Go Back',
          style: TextStyle(color: Colors.blue[300], fontSize: 22.0),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          border: Border.all(
            width: 1.5,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 8.0),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.black87],
        ),
      ),
      child: Column(children: <Widget>[
        SizedBox(height: 70.0,),
        image,
        welcome,
        paragraph,
        SizedBox(
          height: 40.0,
        ),
        backBtn
      ]),
    );

    return Scaffold(
      body: body,
    );
  }
}
