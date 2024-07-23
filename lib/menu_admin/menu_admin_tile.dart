import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project12/mainpage/main_page_grid.dart';

import '../mainpage/Asset.dart';

class Admin_Menu_Tile extends StatelessWidget {
  //var ImageAsset;
  var customerName;
  var _callback;
  var assetName;

  Admin_Menu_Tile(this.customerName, this.assetName, this._callback);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Asset(),
            ),
          );
        }, // Handle your callback
        child: Container(
          //decoration:  BoxDecoration(border: Border.all()),

          color: Colors.pink[100],
          height: 100,
          child: Row(
            children: [
              Expanded(child: Text(' $customerName')),
              VerticalDivider(
                color: Colors.black,
                thickness: 1,
              ),
              Expanded(
                child: Text(' $assetName'),
              ),
              VerticalDivider(
                color: Colors.black,
                thickness: 1,
              ),
              Expanded(
                child: Text(' 15/6/2023'),
              ),
              //SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
