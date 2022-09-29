import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({Key? key}) : super(key: key);

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 70,
              height: 50,
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
            Expanded(
                child: Container(
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 20.0,
                      ),
                      // ignore: prefer_const_constructors
                      child: Text(
                        "Khương dep trai",
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "31 phút",
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Icon(
                                Icons.public,
                                size: 15.0,
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            )),
            Container(
              padding: EdgeInsets.only(right: 25, bottom: 15),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.more),
                    iconSize: 20,
                    color: Colors.grey,
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg/download.jpg'),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Text('ss'),
        )
      ],
    );
  }
}
