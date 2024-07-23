import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:project12/library/library.dart';
import 'package:project12/mainpage/main_page.dart';
import 'package:project12/mainpage/main_page_grid.dart';
import 'package:project12/menu/arduino_asset.dart';
import 'package:project12/menu/computer_accessory.dart';
import 'package:project12/menu/notebook_asset.dart';
import 'package:project12/menu/popular_asset.dart';
import 'package:project12/menu/sport_asset.dart';
import 'package:project12/menu/top9_asset.dart';
import 'package:project12/notification/notification.dart';
//import '../tab/allitem.dart';
import '../tab/item1.dart';
import '../tab/item2.dart';
import '../tab/item3.dart';
import '../tab/item4.dart';
import '../tab/item5.dart';
import '../util/itemtitle.dart';
import '../util/my_tab.dart';
//import 'package:project12/customer/customer_login.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        //length: myTabs.length,
        length: 1,
        child: Scaffold(
            body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20,
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  children: [
                    Text(
                      'Menu',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink),
                    ),
                    Spacer(),
                    IconButton(
                      icon: const Icon(
                        Icons.search,
                        color: Colors.pink,
                      ),
                      padding: const EdgeInsets.all(0.0),
                      alignment: Alignment.topRight,
                      //tooltip: 'Increase volume by 10',
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.person,
                        color: Colors.pink,
                      ),
                      padding: const EdgeInsets.all(0.0),
                      alignment: Alignment.topRight,
                      //tooltip: 'Increase volume by 10',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(color: Colors.black),
              Container(
                width: 340,
                //decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Assets Categories',
                      style: TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Popular_Asset(),
                      ),
                    );},
                      child: Container(
                          color: Colors.pink[100],
                          height: 20,
                          child: Row(
                            children: [
                              Expanded(child: Text(' Popular Assets'))
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Top9_Asset(),
                      ),
                    );},
                      child: Container(
                          color: Colors.pink[100],
                          height: 20,
                          child: Row(
                            children: [Expanded(child: Text(' Top Assets'))],
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Notebook_Asset(),
                      ),
                    );},
                      child: Container(
                          color: Colors.pink[100],
                          height: 20,
                          child: Row(
                            children: [
                              Expanded(child: Text(' Notebook Assets'))
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Computer_Accessory(),
                      ),
                    );},
                      child: Container(
                          color: Colors.pink[100],
                          height: 20,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(' Computer Accessory Assets'))
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Arduino_Asset(),
                      ),
                    );},
                      child: Container(
                          color: Colors.pink[100],
                          height: 20,
                          child: Row(
                            children: [
                              Expanded(child: Text(' Arduino Assets'))
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Sport_Asset(),
                      ),
                    );},
                      child: Container(
                          color: Colors.pink[100],
                          height: 20,
                          child: Row(
                            children: [Expanded(child: Text(' Sport Assets'))],
                          )),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(color: Colors.black),
                    Text(
                      'Asset Locations',
                      style: TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    InkWell(
                      onTap: () {},
                      child: Container(
                          color: Colors.pink[100],
                          height: 20,
                          child: Row(
                            children: [Expanded(child: Text(' S7/ Room-101'))],
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          color: Colors.pink[100],
                          height: 20,
                          child: Row(
                            children: [Expanded(child: Text(' D1/ Room-101'))],
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                          color: Colors.pink[100],
                          height: 20,
                          child: Row(
                            children: [Expanded(child: Text(' E3/ Room-101'))],
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    
                  ],
                ),
              ),
              Spacer(),
              Divider(color: Colors.black),
              Container(
                  padding: const EdgeInsets.all(0.0),
                  height: 20.0, // you can adjust the width as you need
                  child: Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.home,
                          color: Colors.grey,
                        ),
                        alignment: Alignment.bottomLeft,

                        //tooltip: 'Increase volume by 10',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Main_Page(),
                            ),
                          );
                        },
                      ),
                      Spacer(),
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.my_library_books_rounded,
                          color: Colors.grey,
                        ),
                        alignment: Alignment.bottomCenter,

                        //tooltip: 'Increase volume by 10',
                        onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Library(),
                            ),
                          );},
                      ),
                      Spacer(),
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.notifications,
                          color: Colors.grey,
                        ),
                        alignment: Alignment.bottomCenter,

                        //tooltip: 'Increase volume by 10',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Noti(),
                            ),
                          );
                        },
                      ),
                      Spacer(),
                      IconButton(
                        padding: EdgeInsets.all(1),
                        color: Colors.pink,
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.pink,
                        ),
                        alignment: Alignment.bottomRight,

                        //tooltip: 'Increase volume by 10',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Menu(),
                            ),
                          );


                        },
                      ),
                    ],
                  )),
            ],
          ),
        )));
  }
}
