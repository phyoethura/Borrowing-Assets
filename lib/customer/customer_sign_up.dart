import 'package:flutter/material.dart';
import 'package:project12/customer/customer_sign_up_success.dart';

class Customer_Sign_Up extends StatefulWidget {
  const Customer_Sign_Up({super.key});

  @override
  State<Customer_Sign_Up> createState() => _Customer_Sign_UpState();
}

class _Customer_Sign_UpState extends State<Customer_Sign_Up> {
  @override
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
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
          SizedBox(height: 50),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  // ignore: prefer_const_constructors
                  child: Text(
                    'Create an account',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                // ignore: prefer_const_literals_to_create_immutables

                //Container(child: Text('Email'),alignment: Alignment.centerLeft,),
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        const TextField(
                          decoration: InputDecoration(
                            labelText: ' Name',
                            contentPadding: EdgeInsets.symmetric(vertical: 1),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.pink,
                              ), //<-- SEE HERE
                            ),

                            hintText: ' Name',
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        const TextField(
                          decoration: InputDecoration(
                            labelText: ' MFU ID',
                            contentPadding: EdgeInsets.symmetric(vertical: 7),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.pink,
                              ), //<-- SEE HERE
                            ),

                            hintText: ' 6431501173',
                          ),
                        ),
                      ]),
                ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Transform.scale(
                            scale: 0.5,
                            child: Checkbox(
                                checkColor: Colors.green,
                                value: isChecked1,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked1 = value!;
                                  });
                                }),
                          ),
                          Text(
                            'Teacher',
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          )
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Transform.scale(
                            scale: 0.5,
                            child: Checkbox(
                                checkColor: Colors.green,
                                value: isChecked2,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked2 = value!;
                                  });
                                }),
                          ),
                          Text(
                            'Student',
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          )
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Transform.scale(
                            scale: 0.5,
                            child: Checkbox(
                                checkColor: Colors.green,
                                value: isChecked3,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked3 = value!;
                                  });
                                }),
                          ),
                          Text(
                            'Staff',
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ),

                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        const TextField(
                          decoration: InputDecoration(
                            labelText: ' Email',
                            contentPadding: EdgeInsets.symmetric(vertical: 1),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.pink,
                              ), //<-- SEE HERE
                            ),

                            hintText: ' koko@gmail.com',
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 5,
                ),

                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            
                            labelText: ' password',
                            contentPadding: EdgeInsets.symmetric(vertical: 1),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.pink,
                              ), //<-- SEE HERE
                            ),

                            hintText: ' password',
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 5,
                ),

                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            
                            labelText: ' Confirm password',
                            contentPadding: EdgeInsets.symmetric(vertical: 1),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.pink,
                              ), //<-- SEE HERE
                            ),

                            hintText: ' password',
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 5,
                ),

                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Customer_Sign_Up_Success(),
                        ),
                      );},
                    child: const Text('Sign Up')),


                    ElevatedButton.icon(
                  
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(400, 40),backgroundColor: Colors.white,side: const BorderSide(color: Colors.pink)
                  ),
                  onPressed: () {

                  },
                  icon: const Icon(Icons.g_mobiledata_rounded,color: Colors.pink,),
                  label: const Text('Sign-up-with-Google',style: TextStyle(color: Colors.black),),
                ),


              ],
            ),
          )
        ],
      ),
    ));
  }
}
