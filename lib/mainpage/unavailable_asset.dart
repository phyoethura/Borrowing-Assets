import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:project12/library/library.dart';
import 'package:project12/mainpage/main_page_grid.dart';
import 'package:project12/menu/menu.dart';
import 'package:project12/menu_admin/admin_data.dart';
import 'package:project12/notification/notification.dart';
import 'package:project12/testttttt/request_asset.dart';
//import '../tab/allitem.dart';
import '../tab/item1.dart';
import '../tab/item2.dart';
import '../tab/item3.dart';
import '../tab/item4.dart';
import '../tab/item5.dart';
import '../util/itemtitle.dart';
import '../util/my_tab.dart';
//import 'package:project12/customer/customer_login.dart';

class Unavailable_Asset extends StatefulWidget {
  const Unavailable_Asset({super.key});

  @override
  State<Unavailable_Asset> createState() => _Unavailable_AssetState();
}

class _Unavailable_AssetState extends State<Unavailable_Asset> {

   
  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
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
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(color: Colors.black),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink, minimumSize: Size(20, 20)),
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: const Icon(Icons.arrow_back)),
              Container(
                width: 340,
                //decoration: BoxDecoration(border: Border.all(width: 1)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      assetImage[index],
                      height: 100,
                      //width: 100,

                      //fit: BoxFit.cover,
                    ),
                    Text(assetName[index]),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red),
                      child: Text(
                        ' Unavailable ',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      color: Colors.pink[100],
                      height: 20,
                      child: Row(
                        children: [
                          Expanded(child: Text(' Name')),
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                          Expanded(
                            child: Text(assetName[index]),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.pink[100],
                      height: 20,
                      child: Row(
                        children: [
                          Expanded(child: Text(' Asset Number')),
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                          Expanded(
                            child: Text('010'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.pink[100],
                      height: 20,
                      child: Row(
                        children: [
                          Expanded(child: Text(' Inventory Number')),
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                          Expanded(
                            child: Text('007'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.pink[100],
                      height: 20,
                      child: Row(
                        children: [
                          Expanded(child: Text(' Description')),
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                          Expanded(
                            child: Text('Laptop'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.pink[100],
                      height: 20,
                      child: Row(
                        children: [
                          Expanded(child: Text(' Model')),
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                          Expanded(
                            child: Text('Laptop'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.pink[100],
                      height: 20,
                      child: Row(
                        children: [
                          Expanded(child: Text(' Serial')),
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                          Expanded(
                            child: Text('Laptop'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.pink[100],
                      height: 20,
                      child: Row(
                        children: [
                          Expanded(child: Text(' Building')),
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                          Expanded(
                            child: Text('Laptop'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      color: Colors.pink[100],
                      height: 20,
                      child: Row(
                        children: [
                          Expanded(child: Text(' Room')),
                          VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                          Expanded(
                            child: Text('Laptop'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
