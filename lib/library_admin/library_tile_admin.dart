import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project12/mainpage/main_page_grid.dart';

import '../mainpage/Asset.dart';

class Library_Tile extends StatelessWidget {
  //var ImageAsset;
  var customerName;
  var _acceptCallback;
  var _rejectCallback;
  var assetName;

  Library_Tile(this.customerName, this.assetName, this._acceptCallback,
      this._rejectCallback);

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
                child: Row(
                  children: [
                    IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.check,
                          color: Colors.green,
                        ),
                        alignment: Alignment.center,

                        //tooltip: 'Increase volume by 10',
                        onPressed:_acceptCallback ),
                    IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          Icons.cancel_presentation,
                          color: Colors.red,
                        ),
                        alignment: Alignment.center,

                        //tooltip: 'Increase volume by 10',
                        onPressed: _rejectCallback),
                  ],
                ),
              ),
              //SizedBox(height: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
