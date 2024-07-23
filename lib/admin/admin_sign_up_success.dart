import 'package:flutter/material.dart';
import 'package:project12/admin/admin_login.dart';

class Admin_Sign_Up_Success extends StatefulWidget {
  const Admin_Sign_Up_Success({super.key});

  @override
  State<Admin_Sign_Up_Success> createState() => _Admin_Sign_Up_SuccessState();
}

class _Admin_Sign_Up_SuccessState extends State<Admin_Sign_Up_Success> {
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
                'Sign up successfully.',
                // ignore: prefer_const_constructors
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),

              ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
            onPressed: () {
              
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Admin_login(),
                        ),
                      );

          }, child: const Text('OK') )
          
          ],),)
          
        ],
      ),
    ));
  }
}
