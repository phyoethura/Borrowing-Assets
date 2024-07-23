
// ignore_for_file: depend_on_referenced_packages

import 'package:curved_navigation_bar/curved_navigation_bar.dart';


import 'package:flutter/material.dart';

import '../tab/allitem.dart';
import '../tab/item1.dart';
import '../tab/item2.dart';
import '../tab/item3.dart';
import '../tab/item4.dart';
import '../tab/item5.dart';
import '../util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    MyTab(
      iconPath: 'lib/icons/online-test.png',
    ),
    MyTab(
      iconPath: 'lib/icons/online-test.png',
    ),
    MyTab(
      iconPath: 'lib/icons/online-test.png',
    ),
    MyTab(
      iconPath: 'lib/icons/online-test.png',
    ),
    MyTab(
      iconPath: 'lib/icons/online-test.png',
    ),
    MyTab(
      iconPath: 'lib/icons/online-test.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.yellowAccent,
                size: 36,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.yellowAccent,
                  size: 36,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text(
                    'TESTTT',
                    style: TextStyle(fontSize: 24, color: Colors.grey[600]),
                  ),
                  Text(
                    ' TEST',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

                                                 TabBar(tabs: myTabs),


            Expanded(
              child: TabBarView(
                children: [
                  Allitem(),
                  Item1(),
                  Item2(),
                  Item3(),
                  Item4(),
                  Item5(),

                ],
                
              ),
              
            ),
          
            
          ],
        ),
        
      ),
    );
  }
}
