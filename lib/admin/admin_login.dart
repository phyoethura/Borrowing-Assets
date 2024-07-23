import 'package:flutter/material.dart';
import 'package:project12/admin/admin.dart';
import 'package:project12/main_page_admin/main_page_admin.dart';
import 'package:project12/main_page_admin/main_page_grid_admin.dart';

class Admin_login extends StatefulWidget {
  const Admin_login({super.key});

  @override
  State<Admin_login> createState() => _Admin_loginState();
}

class _Admin_loginState extends State<Admin_login> {
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
                    Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (BuildContext context) => Admin()),
  (Route<dynamic> route) => route.isFirst 
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
            Container(alignment: Alignment.center,
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
          Container(
            alignment: Alignment.center,
            // ignore: prefer_const_constructors
            child: Text(
              'Admin Log in',
              // ignore: prefer_const_constructors
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          
          // ignore: prefer_const_literals_to_create_immutables

          //Container(child: Text('Email'),alignment: Alignment.centerLeft,),
          const TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.email,
                color: Colors.pink,
              ),
              hintText: 'Email address',
            ),
          ),

          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.key,
                color: Colors.pink,
              ),
              hintText: 'Password',
            ),
          ),
          ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            onPressed: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Main_Page_admin(),
                        ),
                      );
          }, child: const Text('Login') )
          ],),),

          ElevatedButton.icon(
                  
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(400, 40),backgroundColor: Colors.white,side: const BorderSide(color: Colors.pink)
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Admin_login(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.g_mobiledata_rounded,color: Colors.pink,),
                  label: const Text('Sign-in-with-Google',style: TextStyle(color: Colors.black),),
                ),




          
        ],
      ),
    ));
  }
}
