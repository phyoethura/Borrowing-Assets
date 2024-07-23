import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:project12/library/library.dart';
import 'package:project12/mainpage/main_page.dart';
import 'package:project12/mainpage/main_page_grid.dart';
import 'package:project12/menu_admin/admin_data.dart';
import 'package:project12/testttttt/custom_date_range_picker.dart';
import 'package:intl/intl.dart';
//import '../tab/allitem.dart';
import '../tab/item1.dart';
import '../tab/item2.dart';
import '../tab/item3.dart';
import '../tab/item4.dart';
import '../tab/item5.dart';
import '../util/itemtitle.dart';
import '../util/my_tab.dart';
//import 'package:project12/customer/customer_login.dart';

class Request_Asset extends StatefulWidget {
  const Request_Asset({super.key});

  @override
  State<Request_Asset> createState() => _Request_AssetState();
}

class _Request_AssetState extends State<Request_Asset> {
  @override
  DateTime? startDate;
  DateTime? endDate;
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
                      'assets/images/computer.jpg',
                      height: 100,
                      //width: 100,

                      //fit: BoxFit.cover,
                    ),
                    Text('Item 1'),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'DATETTTTT ${startDate != null ? DateFormat("dd, MMM").format(startDate!) : '-'} => ${endDate != null ? DateFormat("dd, MMM").format(endDate!) : '-'}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink,
                            minimumSize: Size(30, 30)),
                        onPressed: () {
                          showCustomDateRangePicker(
                            context,
                            dismissible: true,
                            minimumDate: DateTime.now()
                                .subtract(const Duration(days: 30)),
                            maximumDate:
                                DateTime.now().add(const Duration(days: 30)),
                            endDate: endDate,
                            startDate: startDate,
                            backgroundColor: Colors.white,
                            primaryColor: Colors.pink,
                            onApplyClick: (start, end) {
                              setState(() {
                                endDate = end;
                                startDate = start;
                              });
                            },
                            onCancelClick: () {
                              setState(() {
                                endDate = null;
                                startDate = null;
                              });
                            },
                          );
                        },
                        child: const Icon(Icons.calendar_month)),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[400],
                      padding: EdgeInsets.all(5)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Main_Page(),
                      ),
                    );
                    setState(() {
                      requestedAssetName.add(assetName[index]);
                      requestedCustomerName.add('Phyo Thura');
                      requestedImage.add(assetImage[index]);
                      noti_assetName.add(assetName[index]);
                      noti_customerName.add('Phyo Thura');
                    });
                  },
                  child: const Text('Request')),
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
                          color: Colors.pink,
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
                        onPressed: () {},
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
                        onPressed: () {},
                      ),
                    ],
                  )),
            ],
          ),
        )));
  }
}
