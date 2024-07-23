import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:project12/library/library.dart';
import 'package:project12/library_admin/library_admin.dart';
import 'package:project12/main_page_admin/main_page_admin.dart';
import 'package:project12/mainpage/main_page.dart';
import 'package:project12/mainpage/main_page_grid.dart';
import 'package:project12/menu/menu.dart';
import 'package:project12/menu_admin/menu_admin_grid.dart';
import 'package:project12/menu_admin/menu_admin_tile.dart';
import 'package:project12/noti_admin/noti_admin.dart';
import 'package:project12/notification/notification.dart';
import 'package:project12/menu_admin/admin_data.dart';
//import '../tab/allitem.dart';

//import 'package:project12/customer/customer_login.dart';

class Menu_admin extends StatefulWidget {
  const Menu_admin({super.key});

  @override
  State<Menu_admin> createState() => _Menu_adminState();
}

class _Menu_adminState extends State<Menu_admin> {
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
                      'Borrowed Assets',
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
                              height: 20,
                              child: Row(
                                children: [
                                  Expanded(
                                    
                                    child: Text(' Name/ID')),
                                  VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,
                                  ),
                                  Expanded(
                                    child: Text('Asset'),
                                  ),
                                  VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,
                                  ),
                                  Expanded(
                                    child: Text('Due Date'),
                                  ),

                        ],
                      ),
                    ),
              Container(
                height: 420,
                child: GridView.count(
                  crossAxisCount: 1,
                  childAspectRatio: (300 / 25),
                  children: List.generate(borrowedAssetName.length, (index) {
                    //generating tiles with people from list
                    return Admin_Menu_Tile(
                        //assetImae[index],
                        borrowedCustomerName[index],
                        borrowedAssetName[index], () {
                      setState(() {
                        print("request ${assetName[index]} is deleted");
                        
                      });
                    });
                  }),
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
                        onPressed: () {Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Library_Admin(),
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
                              builder: (context) => const Noti_Admin(),
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
