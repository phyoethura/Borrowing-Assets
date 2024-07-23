import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:project12/library/library.dart';
import 'package:project12/mainpage/main_page_grid.dart';
import 'package:project12/mainpage/main_tile.dart';
import 'package:project12/mainpage/unavailable_main_tile.dart';
import 'package:project12/menu/menu.dart';
import 'package:project12/notification/notification.dart';
//import '../tab/allitem.dart';
import '../menu_admin/admin_data.dart';
import '../tab/item1.dart';
import '../tab/item2.dart';
import '../tab/item3.dart';
import '../tab/item4.dart';
import '../tab/item5.dart';
import '../util/itemtitle.dart';
import '../util/my_tab.dart';
//import 'package:project12/customer/customer_login.dart';

class Main_Page extends StatefulWidget {
  const Main_Page({super.key});

  @override
  State<Main_Page> createState() => _Main_PageState();
}

class _Main_PageState extends State<Main_Page> {
  

  StatelessWidget check_Ok(int index) {
    if (available[index] == true) {
      return Main_Tile(
          //assetImae[index],
          assetName[index],
          assetImage[index],
          index);
    } else {
      return Unavailable_Main_Tile(
          //assetImae[index],
          assetName[index],
          assetImage[index],
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
                  height: 520,
                  child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: (50 / 50),
                      children: List.generate(assetImage.length, (index) {
                        //generating tiles with people from list
                        return check_Ok(index);
                      }))),
              //Spacer(),
              Spacer(),
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
                        onPressed: () {},
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
