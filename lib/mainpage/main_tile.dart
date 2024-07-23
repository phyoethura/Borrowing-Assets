import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project12/mainpage/main_page_grid.dart';

import '../mainpage/Asset.dart';

class Main_Tile extends StatelessWidget {
  //var ImageAsset;
  var assetImage;
  int _callback;
  var assetName;

  Main_Tile(this.assetName, this.assetImage, this._callback);

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
                              return const Asset();
                            },
                            settings: RouteSettings(arguments: _callback)),
                      );
        }, // Handle your callback
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 0.4),
            //color: Colors.pink[50]
            ),
          //height: 100,width: 100,

          child: Center(child:Column(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Image.asset(
                assetImage,
                height: 80,
                width: 100,

                //fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Center(child: Text("$assetName"),)
                  ,
                 
                  
                ],
              ),
            ],
          ) ,),
          
        ),
      ),
    );
  }
}
