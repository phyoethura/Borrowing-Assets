import 'dart:math';

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:project12/library/library_grid.dart';
import 'package:project12/library/library_requested_grid.dart';
import 'package:project12/library_admin/library_tile_admin.dart';
import 'package:project12/main_page_admin/main_page_admin.dart';
import 'package:project12/mainpage/main_page.dart';
import 'package:project12/menu/menu.dart';
import 'package:project12/menu_admin/menu_admin.dart';
import 'package:project12/noti_admin/noti_admin.dart';
import 'package:project12/notification/notification.dart';
//import '../tab/allitem.dart';
import '../tab/item1.dart';
import '../tab/item2.dart';
import '../tab/item3.dart';
import '../tab/item4.dart';
import '../tab/item5.dart';
import '../util/itemtitle.dart';
import '../util/my_tab.dart';
import 'package:project12/menu_admin/admin_data.dart';
//import 'package:project12/customer/customer_login.dart';

class Library_Admin extends StatefulWidget {
  const Library_Admin({super.key});

  @override
  State<Library_Admin> createState() => _Library_AdminState();
}

class _Library_AdminState extends State<Library_Admin> {
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
                      'Library',
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
                color: Colors.pink[100],
                height: 30,
                child: Row(
                  children: [
                    Expanded(child: Center(child: Text(' Customer'))),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Expanded(child: Center(child: Text(' Asset'))),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Expanded(child: Center(child: Text(' Confirm'))),
                  ],
                ),
              ),
              Container(
                height: 420,
                child: GridView.count(
                  crossAxisCount: 1,
                  childAspectRatio: (300 / 25),
                  children: List.generate(requestedAssetName.length, (index) {
                    //generating tiles with people from list
                    return Library_Tile(
                        //assetImae[index],
                        requestedCustomerName[index],
                        requestedAssetName[index], () {
                      setState(() {
                        addBorrowedAssset(requestedCustomerName[index],
                            requestedAssetName[index], requestedImage[index]);
                        deleteRequestedAssetName(index);
                        deleteRequestedCustomerName(index);
                        deleteRequestedImage(index);
                        

                      });
                    }, () {
                      setState(() {
                        deleteRequestedAssetName(index);
                        deleteRequestedCustomerName(index);
                        deleteRequestedImage(index);
                        
                      });
                    });
                  }),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Spacer(),
              Divider(color: Colors.black),
              Container(
                  padding: const EdgeInsets.all(0.0),
                  height: 20.0, // you can adjust the width as you need
                  child: Row(
                    children: [
                      IconButton(
                        padding: EdgeInsets.all(1),

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
                          color: Colors.pink,
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
