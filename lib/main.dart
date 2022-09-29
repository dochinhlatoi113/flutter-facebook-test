import 'package:flutter/material.dart';
import 'package:flutter_application_1/headerItem.dart';
import 'package:flutter_application_1/libr.dart';
import 'package:flutter_application_1/tabnav.dart';
import 'dart:ui';
import 'dart:html';
import 'package:flutter_application_1/main1.dart';
import 'package:flutter_application_1/newsfeed.dart';

void main() {
  //Center is a widget, Text is a widget
  runApp(MyApp() //How to send arguments/params to this Widget ?
      );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: myTestHome(),
    );
  }
}

class myTestHome extends StatelessWidget {
  const myTestHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu Icon',
            onPressed: () {},
          ),
          title: Image.asset(
            "../assets/images/images.png",
            width: 100,
          ),
          backgroundColor: Color.fromRGBO(59, 89, 152, 1),
          actions: [
            IconButton(
              icon: Icon(
                Icons.maps_ugc,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.note_add,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(child: Libr()
                // child: Libr(),
                ),
            Container(
              child: TabNav(),
            ),
            Container(
              child: NewsFeed(),
            ),
          ],
        )));
  }
}
