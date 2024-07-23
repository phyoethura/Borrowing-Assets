import 'package:flutter/material.dart';
import 'package:project12/customer/customer.dart';
import 'package:project12/mainpage/main_page.dart';
//import 'package:project12/admin/admin_login.dart';

class Customer_login extends StatefulWidget {
  const Customer_login({super.key});

  @override
  State<Customer_login> createState() => _Customer_loginState();
}

class _Customer_loginState extends State<Customer_login> {
  bool isChecked = false;

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
  MaterialPageRoute(builder: (BuildContext context) => Customer()),
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
          Container(
            alignment: Alignment.center,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ignore: prefer_const_constructors
                Text(
                  'Welcome Back',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                ),
                // ignore: prefer_const_constructors

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

                Row(
                  children: [
                    Transform.scale(
                      scale: 0.5,
                      child: Checkbox(
                          checkColor: Colors.green,
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                    ),
                    Text(
                      'Remember me',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    )
                  ],
                ),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Main_Page(),
                        ),
                      );
                    },
                    child: const Text('Login')),

                ElevatedButton.icon(
                  
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(400, 40),backgroundColor: Colors.white,side: const BorderSide(color: Colors.pink)
                  ),
                  onPressed: () {
                  },
                  icon: const Icon(Icons.g_mobiledata_rounded,color: Colors.pink,),
                  label: const Text('Sign-in-with-Google',style: TextStyle(color: Colors.black),),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
