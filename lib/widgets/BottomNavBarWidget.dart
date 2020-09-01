import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
//        navigateToScreens(index);
      });
    }

    return BottomAppBar(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff65ab0c), borderRadius: BorderRadius.circular(30)),
        height: 55,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        child: Image.asset("assets/images/domino.png"),
                      ),
                      Text(
                        "Menu",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.blueGrey,
                width: 1,
                height: 30,
              ),
              Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 27,
                        height: 27,
                        child: Image.asset("assets/images/coupon.png"),
                      ),
                      Text(
                        "EDV",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.blueGrey,
                width: 1,
                height: 35,
              ),
              Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        child: Image.asset("assets/images/wallet.png"),
                      ),
                      Text(
                        "Wallet",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.blueGrey,
                width: 1,
                height: 35,
              ),
              Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        child: Image.asset("assets/images/cart.png"),
                      ),
                      Text(
                        "Cart",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
            ]),
      ),
    ));
  }
}
