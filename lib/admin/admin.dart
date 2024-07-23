import 'package:flutter/material.dart';
import 'package:project12/admin/admin_login.dart';
import 'package:project12/admin/admin_sign_up.dart';
//import 'package:project12/admin/admin_sign_up_success.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink, minimumSize: Size(20, 20)),
                  onPressed: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: const Icon(Icons.arrow_back)),
              Spacer(),
              Text(
                'Group 12 Assets Borrowing',
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
            ],
          ),
          SizedBox(height: 130),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome Admin',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                ),
                SizedBox(
                  height: 20,
                ),

                // ignore: prefer_const_literals_to_create_immutables

                //Container(child: Text('Email'),alignment: Alignment.centerLeft,),

                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Admin_login(),
                        ),
                      );
                    },
                    child: const Text('Sign In')),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Admin_Sign_Up(),
                        ),
                      );},
                    child: const Text('Sign up'))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
