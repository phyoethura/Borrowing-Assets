import 'package:flutter/material.dart';

class Menu_Admin_Grid extends StatefulWidget {
  const Menu_Admin_Grid({super.key});

  @override
  State<Menu_Admin_Grid> createState() => _Menu_Admin_GridState();
}

class _Menu_Admin_GridState extends State<Menu_Admin_Grid> {
  @override
  Widget build(BuildContext context) {
    return Container(
                              color: Colors.pink[100],
                              height: 100,
                              child: Row(
                                children: [
                                  Expanded(
                                    
                                    child: Text(' Mr. Phyo Thura/ 6431501173')),
                                  VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,
                                  ),
                                  Expanded(
                                    child: Text('Lenovo/ 1000100 '),
                                  ),
                                  VerticalDivider(
                                    color: Colors.black,
                                    thickness: 1,
                                  ),
                                  Expanded(
                                    child: Text('10/5/2023 '),
                                  ),

                        ],
                      ),);
  }
}