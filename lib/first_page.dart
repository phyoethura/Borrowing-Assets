// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project12/admin/admin.dart';
import 'package:project12/customer/customer.dart';

class First_Page extends StatefulWidget {
  const First_Page({super.key});

  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Spacer(),

            Container(
              alignment: Alignment.center,
              child: Text(
                'Group 12 Assets Borrowing',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 237, 121, 172),
                    minimumSize: Size(150, 40),
                    alignment: Alignment.centerLeft),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Admin(),
                      ),
                    );
                },
                icon: const Icon(Icons.admin_panel_settings),
                label: Text(
                  'Admin',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                )),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 237, 121, 172),
                    minimumSize: Size(150, 40),
                    alignment: Alignment.centerLeft),
                onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Customer(),
                      ),
                    );},
                icon: const Icon(Icons.people),
                label: Text('Customer', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
                ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 237, 121, 172),
                    minimumSize: Size(150, 40),
                    alignment: Alignment.centerLeft),
                onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Customer(),
                      ),
                    );},
                icon: const Icon(Icons.assignment_ind_sharp),
                label: Text('About Us', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
          ]),
    );
  }
}
