import 'package:flutter/material.dart';

class HeaderItem extends StatefulWidget {
  const HeaderItem({Key? key}) : super(key: key);

  @override
  State<HeaderItem> createState() => _HeaderItemState();
}

class _HeaderItemState extends State<HeaderItem> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: menus(),
    );
  }
}

class menus extends StatefulWidget {
  const menus({Key? key}) : super(key: key);

  @override
  State<menus> createState() => _menustState();
}

class _menustState extends State<menus> {
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
    );
  }
}

// ignore: unnecessary_new

