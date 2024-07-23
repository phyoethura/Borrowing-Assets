import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project12/library/request_asset.dart';
import 'package:project12/menu/borrowed_asset.dart';
import 'package:project12/main_page_admin/asset_admin.dart';
import 'package:project12/mainpage/main_page_grid.dart';

import '../mainpage/Asset.dart';

class Noti_Borrowed_Tile extends StatelessWidget {
  //var ImageAsset;
  //var assetImage;
  var customerName;
  var assetName;
  int index;

  Noti_Borrowed_Tile( this.assetName, this.customerName, this.index);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            //MaterialPageRoute(builder: (context) => const Page2(),)
            MaterialPageRoute(
                builder: (context) {
                  return const Requested_Asset();
                },
                settings: RouteSettings(arguments: index)),
          );
        }, // Handle your callback
        child: Container(
          decoration:  BoxDecoration(border: Border.all()),

          //color: Colors.pink[100],
          height: 100,
          child: Row(
            children: [
              Expanded(child: Text(' $assetName has been approved.')),
               IconButton(
                                padding: EdgeInsets.zero,
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.pink,
                                ),
                                alignment: Alignment.centerRight,

                                //tooltip: 'Increase volume by 10',
                                onPressed: () {},
                              ),
              //SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
