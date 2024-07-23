import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project12/mainpage/main_page_grid.dart';

import '../mainpage/Asset.dart';

class TestTile extends StatelessWidget {
  //var ImageAsset;
  var assetImage;
  var _callback;
  var assetName;

  TestTile(this.assetName,this.assetImage, this._callback);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Card(
          child: InkResponse(
              //onLongPress: _callback,
              child: Center(
        child: InkWell(
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
                assetImage,
                height: 80,
                width: 100,

                //fit: BoxFit.cover,
              ),
              Row(
                children: [
                  SizedBox(width: 5,),
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
      ))),
    );
  }
}
