import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:project12/library/library.dart';
import 'package:project12/mainpage/main_page.dart';
import 'package:project12/mainpage/main_page_grid.dart';
import 'package:project12/menu/menu.dart';
import 'package:project12/notification/notification.dart';
//import '../tab/allitem.dart';

//import 'package:project12/customer/customer_login.dart';

class Arduino_Asset extends StatefulWidget {
  const Arduino_Asset({super.key});

  @override
  State<Arduino_Asset> createState() => _Arduino_AssetState();
}

class _Arduino_AssetState extends State<Arduino_Asset> {
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
              Row(children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink, minimumSize: Size(20, 20)),
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: const Icon(Icons.arrow_back)),
                  SizedBox(width: 10,),
                  Text(
                              'Arduino Assets',
                              style: TextStyle(
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold),
                            ),

              ],),
              
              Container(
                height: 480,
                child: SingleChildScrollView(
                  child: Column(children: [
                    
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Divider(color: Colors.black),
                            
                            Main_Grid(),
                            Main_Grid(),
                            Main_Grid(),
                            //Divider(color: Colors.black),
                            
                           
                          ],
                        )),
                  ]),
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
