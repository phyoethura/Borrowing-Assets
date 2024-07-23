import 'package:flutter/material.dart';
import 'package:project12/customer/customer_login.dart';
import 'package:project12/customer/customer_sign_up.dart';

class Customer extends StatefulWidget {
  const Customer({super.key});

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
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

            Container(alignment: Alignment.center,
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
          Text(
                'Welcome Customer',
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),

          
          // ignore: prefer_const_literals_to_create_immutables

          //Container(child: Text('Email'),alignment: Alignment.centerLeft,),
          
          ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            onPressed: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Customer_login(),
                      ),
                    );
          }, child: const Text('Sign In') ),
          ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            onPressed: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Customer_Sign_Up(),
                      ),
                    );

          }, child: const Text('Sign up') )
          ],),)
          
        ],
      ),
    )
    );
  }
}