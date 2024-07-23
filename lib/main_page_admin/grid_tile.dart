import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project12/main_page_admin/asset_admin.dart';
import 'package:project12/mainpage/main_page_grid.dart';

import '../mainpage/Asset.dart';

class Grid_Tile extends StatelessWidget {
  //var ImageAsset;
  var assetImage;
  var _callback;
  var assetName;
  int index;

  Grid_Tile(this.assetName, this.assetImage, this._callback, this.index);

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
                  return const Asset_Admin();
                },
                settings: RouteSettings(arguments: index)),
          );
        }, // Handle your callback
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0.4),
            //color: Colors.pink[50]
          ),
          //height: 100,width: 100,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                assetImage,
                height: 80,
                width: 100,

                //fit: BoxFit.cover,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text("$assetName"),
                  Spacer(),
                  IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      alignment: Alignment.bottomRight,

                      //tooltip: 'Increase volume by 10',
                      onPressed: _callback),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
