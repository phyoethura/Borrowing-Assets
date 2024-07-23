import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.blue[50],
      ),
      child: Drawer(
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.blueGrey,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/joker.jpg'),
                  ),
                ),
                title: Text(
                  'Joaquin Phoenix',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                subtitle: Text(
                  "You wouldn't get it",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 10.0),
                ),
              )
            ],
          )),
    );
  }
}