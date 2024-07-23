import 'package:flutter/material.dart';
import 'package:project12/library/request_asset.dart';

class Library_Requested_Grid extends StatefulWidget {
  const Library_Requested_Grid({super.key});

  @override
  State<Library_Requested_Grid> createState() => _Library_Requested_GridState();
}

class _Library_Requested_GridState extends State<Library_Requested_Grid> {
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
                builder: (context) => const Requested_Asset(),
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
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Requested_Asset(),
              ),
            );
          }, // Handle your callback
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/macbook.jpg',
                height: 80,
                width: 100,

                //fit: BoxFit.cover,
              ),
              Text('Item 2'),
            ],
          ),
        ),
        Spacer(),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Requested_Asset(),
              ),
            );
          }, // Handle your callback
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/mouse.jpg',
                height: 80,
                width: 100,

                //fit: BoxFit.cover,
              ),
              Text('Item 3'),
            ],
          ),
        ),
      ],
    );
  }
}
