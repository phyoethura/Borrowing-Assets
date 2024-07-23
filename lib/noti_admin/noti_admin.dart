import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:project12/library/library.dart';
import 'package:project12/library_admin/library_admin.dart';
import 'package:project12/main_page_admin/main_page_admin.dart';
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
import 'package:project12/menu_admin/menu_admin.dart';
import 'package:project12/noti_admin/noti_borrowed_tile.dart';
import 'package:project12/noti_admin/noti_admin_tile.dart';
//import '../tab/allitem.dart';

//import 'package:project12/customer/customer_login.dart';

class Noti_Admin extends StatefulWidget {
  const Noti_Admin({super.key});

  @override
  State<Noti_Admin> createState() => _Noti_AdminState();
}

class _Noti_AdminState extends State<Noti_Admin> {
  int count = 4;
  Color? c1 = Colors.pink[100];
  Color? c2 = Colors.grey;
 
  int request_check = requestedAssetName.length-1;
  StatelessWidget check_Ok(int index) {
    if ( request_check >= index) {
      
      return Noti_Tile(
          //assetImae[index],
          requestedAssetName[index],
          requestedCustomerName[index],
          index);
    } else {
      return Noti_Borrowed_Tile(
          //assetImae[index],
          borrowedAssetName[index - (request_check +1)],
          borrowedCustomerName[index - (request_check +1)],
          index);
    }
  }

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
                          requestedAssetName.length + borrowedAssetName.length,
                          (index) {
                        //generating tiles with people from list
                        return check_Ok(index);
                      }))),
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
                                  builder: (context) => const Noti_Admin(),
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
