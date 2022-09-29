import 'package:flutter/material.dart';

class Libr extends StatefulWidget {
  const Libr({Key? key}) : super(key: key);

  @override
  State<Libr> createState() => _LibrState();
}

class _LibrState extends State<Libr> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: 70,
              height: 70,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/avatar.jpg',
                  ),
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: const TextField(
                // obscureText: true,
                decoration: InputDecoration(
                  labelText: 'bạn đang nghĩ gì ?',
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Icon(Icons.book_rounded, size: 40, color: Colors.green),
            ),
          ),
        ]);
  }
}
