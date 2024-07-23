import 'package:flutter/material.dart';
import 'package:project12/mainpage/Asset.dart';
import 'package:project12/mainpage/unavailable_main_tile.dart';

class Main_Grid extends StatefulWidget {
  const Main_Grid({super.key});

  @override
  State<Main_Grid> createState() => _Main_GridState();
}

class _Main_GridState extends State<Main_Grid> {
  @override
  Widget build(BuildContext context) {
    return 
      //height: 310,
       Row(
        children: [

          

          InkWell(
            
            onTap: () {
              Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Asset(),
                      ),
                    );
            }, // Handle your callback
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/computer.jpg',
                  height: 80,
                  width: 100,

                  //fit: BoxFit.cover,
                ),
                Text('Item 1'),
              ],
            ),
          ),
          Spacer(),
          //Unavailable(),
          Spacer(),

          InkWell(
            onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Asset(),
                      ),
                    );}, // Handle your callback
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/mouse.jpg',
                  height: 80,
                  width: 100,

                  //fit: BoxFit.cover,
                ),
                Row(
                  children: [
                   Text('Item 1'), 
                 
                  ],
                ),
                
                
              ],
            ),
          ),


        ],
      
    );
  }
}
