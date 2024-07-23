import 'package:flutter/material.dart';
import 'package:project12/main_page_admin/unavailable_admin.dart';
import 'package:project12/mainpage/Asset.dart';
import 'package:project12/mainpage/unavailable_main_tile.dart';

class Main_Grid_admin extends StatefulWidget {
  const Main_Grid_admin({super.key});

  @override
  State<Main_Grid_admin> createState() => _Main_Grid_adminState();
}

class _Main_Grid_adminState extends State<Main_Grid_admin> {
  @override
  Widget build(BuildContext context) {
    return 
      //height: 310,
       Row(
        children: [

          

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
                 IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.grey,
                        ),
                        alignment: Alignment.centerRight,

                        //tooltip: 'Increase volume by 10',
                        onPressed: () {},
                      ),
                  ],
                ),
                
                
              ],
            ),
          ),
          Spacer(),
          Unavailable_admin(),
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
                 IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.grey,
                        ),
                        alignment: Alignment.centerRight,

                        //tooltip: 'Increase volume by 10',
                        onPressed: () {},
                      ),
                  ],
                ),
                
                
              ],
            ),
          ),


        ],
      
    );
  }
}
