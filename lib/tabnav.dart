import 'dart:html';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TabNav extends StatefulWidget {
  const TabNav({Key? key}) : super(key: key);

  @override
  State<TabNav> createState() => _TabNavState();
}

class _TabNavState extends State<TabNav> {
  // get child => null;

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     Container(
    //       child: DefaultTabController,
    //     ),
    //     Container()
    //   ],
    // );
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              child: TabBar(
                tabs: [
                  Tab(
                    text: 'Tin',
                  ),
                  Tab(
                    text: 'Reels',
                  )
                ],
                labelColor: Colors.lightBlue,
                unselectedLabelColor: Colors.black,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              height: 300,
              child: TabBarView(
                children: <Widget>[
                  ListView(children: [
                    CarouselSlider(
                      items: [
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://gamek.mediacdn.vn/133514250583805952/2021/8/16/hot8-1629130889395889998278.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        //1st Image of Slider
                        Container(
                          margin: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://gamek.mediacdn.vn/133514250583805952/2021/8/16/hot9-16291309016682040410412.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],

                      //Slider Container properties
                      options: CarouselOptions(
                        height: 300,

                        // enlargeCenterPage: true,
                        // autoPlay: true,
                        // aspectRatio: 16 / 9,
                        // autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        // autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.4,
                      ),
                    ),
                  ]),
                  Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text('tjis is tete'),
                  )
                ],
                ///////////////////reels///////////////////////////////////////
              ),
            ),
          ],
        ));
  }
}
