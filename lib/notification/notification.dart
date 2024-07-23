import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:project12/library/library.dart';
import 'package:project12/mainpage/main_page.dart';
import 'package:project12/mainpage/main_page_grid.dart';
import 'package:project12/menu/arduino_asset.dart';
import 'package:project12/menu/computer_accessory.dart';
import 'package:project12/menu/menu.dart';
import 'package:project12/menu/notebook_asset.dart';
import 'package:project12/menu/popular_asset.dart';
import 'package:project12/menu/sport_asset.dart';
import 'package:project12/menu/top9_asset.dart';
import 'package:project12/menu_admin/admin_data.dart';
import 'package:project12/notification/noti_customer_tile.dart';
//import '../tab/allitem.dart';

//import 'package:project12/customer/customer_login.dart';

class Noti extends StatefulWidget {
  const Noti({super.key});

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  int count = 4;
  Color? c1 = Colors.pink[100];
    Color? c2 = Colors.grey;
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
                      'Notification',
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
                  height: 520,
                  child: GridView.count(
                      crossAxisCount: 1,
                      childAspectRatio: (300 / 35),
                      children: List.generate(
                          borrowedAssetName.length,
                          (index) {
                        //generating tiles with people from list
                        return Noti_Customer_Tile(
          //assetImae[index],
          borrowedAssetName[index],
          borrowedCustomerName[index],
          index);
                      }),
                      )),
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Library(),
                            ),
                          );
                        },
                      ),
                      Spacer(),
                      Stack(
                        children: [
                          new IconButton(
                            padding: EdgeInsets.zero,
                            icon: const Icon(
                              Icons.notifications,
                              color: Colors.pink,
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
                              setState(() {
                                count = 0;
                              });
                            },
                          ),
                          count != 0
                              ? new Positioned(
                                  right: 0,
                                  top: 0,
                                  child: new Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: new BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    constraints: BoxConstraints(
                                      minWidth: 14,
                                      minHeight: 14,
                                    ),
                                    child: Text(
                                      '$count',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 8,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                )
                              : new Container()
                              
                        ],
                      ),
                      
                      Spacer(),
                      IconButton(
                        padding: EdgeInsets.all(1),
                        color: Colors.grey,
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
