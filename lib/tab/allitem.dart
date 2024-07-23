import 'package:flutter/material.dart';

import '../util/itemtitle.dart';

class Allitem extends StatelessWidget {
  List Itemlib = [
    ["Item11", "1", Colors.red, "lib/icons/online-test.png"],
    ["Item12", "2", Colors.red, "lib/icons/online-test.png"],
    ["Item13", "3", Colors.red, "lib/icons/online-test.png"],
    ["Item14", "4", Colors.red, "lib/icons/online-test.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Itemlib.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return Itemtt(
          Itemmm: Itemlib[index][0],
          Amount: Itemlib[index][1],
          Itemmmm: Itemlib[index][2],
          imageName: Itemlib[index][3],
        );
      },
    );
  }
}
