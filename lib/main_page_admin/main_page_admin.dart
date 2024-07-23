import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:project12/library/library.dart';
import 'package:project12/library_admin/library_admin.dart';
import 'package:project12/main_page_admin/main_page_grid_admin.dart';
import 'package:project12/mainpage/main_page_grid.dart';
import 'package:project12/menu_admin/menu_admin.dart';
import 'package:project12/noti_admin/noti_admin.dart';
//import '../tab/allitem.dart';
import '../exxx/testTile.dart';
import 'package:project12/main_page_admin/grid_tile.dart';
import '../tab/item1.dart';
import '../tab/item2.dart';
import '../tab/item3.dart';
import '../tab/item4.dart';
import '../tab/item5.dart';
import '../util/itemtitle.dart';
import '../util/my_tab.dart';
//import 'package:project12/customer/customer_login.dart';
import 'package:project12/menu_admin/admin_data.dart';

class Main_Page_admin extends StatefulWidget {
  const Main_Page_admin({super.key});

  @override
  State<Main_Page_admin> createState() => _Main_Page_adminState();
}

class _Main_Page_adminState extends State<Main_Page_admin> {
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
                      'Assets',
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
                      onPressed: () {
                        setState(() {
                          assetName.add('Lenovo');
                          assetImage.add('assets/images/computer.jpg',);
                          available.add(true);
                        });
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.person,
                        color: Colors.pink,
                      ),
                      padding: const EdgeInsets.all(0.0),
                      alignment: Alignment.topRight,
                      //tooltip: 'Increase volume by 10',
                      onPressed: () {
                        Navigator.popUntil(
                            context, (Route<dynamic> route) => route.isFirst);
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(color: Colors.black),
              Container(
                  height: 520,
                  child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: (50 / 50),
                      children: List.generate(assetImage.length, (index) {
                        //generating tiles with people from list
                        return Grid_Tile(
                            //assetImae[index],
                            assetName[index],
                            assetImage[index], () {
                          setState(() {
                            print("asset ${assetName[index]} is deleted");
                            assetImage.remove(assetImage[index]);
                            assetName.remove(assetName[index]);
                            //customerName.remove(customerName[index]);
                          });
                        }, index);
                      }))),
              //Spacer(),
              Divider(color: Colors.black),
              Container(
                  padding: const EdgeInsets.all(0.0),
                  height: 20.0, // you can adjust the width as you need
                  child: Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.all(1),
                        color: Colors.pink,
                        icon: const Icon(
                          Icons.home,
                          color: Colors.pink,
                        ),
                        alignment: Alignment.bottomLeft,

                        //tooltip: 'Increase volume by 10',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Main_Page_admin(),
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Library_Admin(),
                            ),
                          );
                        },
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
                              builder: (context) => const Noti_Admin(),
                            ),
                          );
                        },
                      ),
                      Spacer(),
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.grey,
                        ),
                        alignment: Alignment.bottomRight,

                        //tooltip: 'Increase volume by 10',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Menu_admin(),
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
