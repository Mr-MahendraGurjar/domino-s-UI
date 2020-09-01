import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dominos_ui/widgets/BottomNavBarWidget.dart';

class MenuPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MenuPage> {
  int _radioValue1 = -1;

  final List<int> pages = List.generate(4, (index) => index);

  Color get randomColor =>
      Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: Container(
            child: Text("sdvdsvddfb"),
          ),
        ),
        Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
              backgroundColor: Color(0xFF2a64a3),
              elevation: 0,
              title: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deliver to",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 20,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: Center(
                              child: Text(
                            "OTHER",
                            style: TextStyle(color: Colors.blue, fontSize: 10),
                          )),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Wrap(
                          direction: Axis.vertical,
                          children: [
                            Text(
                              "Bangaluru, Akshaynagar, DLF Newtown",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Text(
                              "..............................................................................................",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 8),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10.0),
                  child: Container(
                    color: Color(0xffedf3ff),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10.0, left: 8),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.6,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        child: new Radio(
                                          value: 0,
                                          groupValue: _radioValue1,
                                          onChanged: _handleRadioValueChange1,
                                        ),
                                      ),
                                      new Text(
                                        'Delivery',
                                        style: new TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Expanded(
                                        child: new Radio(
                                          value: 1,
                                          groupValue: _radioValue1,
                                          onChanged: _handleRadioValueChange1,
                                        ),
                                      ),
                                      new Text(
                                        'Takeaway',
                                        style: new TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Expanded(
                                        child: new Radio(
                                          value: 2,
                                          groupValue: _radioValue1,
                                          onChanged: _handleRadioValueChange1,
                                        ),
                                      ),
                                      new Text(
                                        'Dine-in',
                                        style: new TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8, top: 10),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.25,
                                  height: 45,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        child: Image.asset(
                                            "assets/images/train.png"),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Wrap(
                                        direction: Axis.vertical,
                                        children: [
                                          Text(
                                            "Deliver",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text("on Train",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15.0, right: 10),
                          child: Container(
                            height: 110,
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image.asset(
                                    'assets/images/food1.jpeg',
                                    width:
                                        MediaQuery.of(context).size.width * 0.50,
                                    height: 110.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Image.asset(
                                    'assets/images/food2.jpeg',
                                    width:
                                        MediaQuery.of(context).size.width * 0.50,
                                    height: 100.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Image.asset(
                                    'assets/images/food3.jpeg',
                                    width:
                                        MediaQuery.of(context).size.width * 0.50,
                                    height: 100.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Image.asset(
                                    'assets/images/food4.jpeg',
                                    width:
                                        MediaQuery.of(context).size.width * 0.50,
                                    height: 100.0,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10),
                          child: Text(
                            "Explore Menu",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.redAccent),
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.width / 3,
                                width: MediaQuery.of(context).size.width / 2.2,
                                child: Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQOQ4h-ZWSxbZIx5Xy8jUp4qppVsulj_RTiZg&usqp=CAU',
                                  width: MediaQuery.of(context).size.width * 0.54,
                                  height: 100.0,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 2.2,
                                height: MediaQuery.of(context).size.width / 3,
                                child: Image.asset(
                                  'assets/images/food4.jpeg',
                                  width: MediaQuery.of(context).size.width * 0.54,
                                  height: 100.0,
                                  fit: BoxFit.cover,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:5.0),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 3.35,
                                  height: MediaQuery.of(context).size.width / 3.2,

                                  child: Image.network(
                                    'https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fblogs-images.forbes.com%2Fkylewong%2Ffiles%2F2018%2F01%2FLarge-2-Topping_Boxes_1_5x7-2-150x150.jpg',
                                    width: MediaQuery.of(context).size.width * 0.50,
                                    height: 100.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 3.35,
                                  height: MediaQuery.of(context).size.width / 3.2,
                                  child: Image.network(
                                    'https://cdn.newsapi.com.au/image/v1/fbeebca482ab7f808120d794d3d5125d',
                                    width: MediaQuery.of(context).size.width * 0.50,
                                    height: 100.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 3.35,
                                  height: MediaQuery.of(context).size.width / 3.2,
                                  child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSDm3aiVPVx-r66Zb17tP6hVGcV8q6ZwiZ-xA&usqp=CAU',
                                    width: MediaQuery.of(context).size.width * 0.50,
                                    height: 100.0,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:5.0,vertical: 10),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.width/3.5,
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRVvb_I_-gmPmCc08dTPMRko8silKkZ9zvCBQ&usqp=CAU',
                              width: MediaQuery.of(context).size.width * 0.50,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavBarWidget(),
        )

      ],
    );
  }

  void _handleRadioValueChange1(int value) {}
}
