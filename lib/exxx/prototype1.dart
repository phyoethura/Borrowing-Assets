/*import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project12/exxx/testTile.dart';

class Prototype1 extends StatefulWidget{
  @override
  _Prototype1State createState() => _Prototype1State();
}

class _Prototype1State extends State<Prototype1> {
  //list of some data
 static List<String> assetImage = ['assets/images/computer.jpg','assets/images/macbook.jpg','assets/images/soundbox.jpg','assets/images/mouse.jpg'];
  Random rand = new Random();
  /*_Prototype1State(){
    //filling the list
    for(int i=0; i<5; i++){ 
      assetList.add(AssetTotoal.assetImage);
    }
    print("Person ${assetList.toString()}");
  }
*/

  @override
  Widget build(BuildContext context) {
  //----building the app----
  return Scaffold(
      appBar: AppBar(
        title: Text("Prototype"),
        actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              //generating an item on tap
              onPressed: () {
                setState(() {
                  assetImage.add(assetImage[rand.nextInt(4)]);
                });
              },
            ),
          ]
      ),
      body: GridView.count(
      crossAxisCount: 2,
      children: List.generate(assetImage.length, (index) {
        //generating tiles with people from list
        return TestTile(
          //assetImae[index],
          //assetName[index],
          assetImage[index], (){
            setState(() {
              print("person ${assetImage[index]} is deleted");
              assetImage.remove(assetImage[index]);
            });
          }
        );
        })
      )
    ); 
  }
}

/*class AssetTotoal{
  var imageAsset;

  AssetTotoal(this.imageAsset);
  //static List<String> _aviableNames = ["Bob", "Alise", "Sasha"];
  //static List<String> _aviableLastNames = ["Green", "Simpson", "Stain"];
  static List<String> assetImage = ['assets/images/computer.jpg','assets/images/macbook.jpg','assets/images/soundbox.jpg','assets/images/mouse.jpg'];

  //String firstName;
  //String lastName;

  ///method that returns random person
    //static AssetTotoal generateRandomPerson(){
    //Random rand = new Random();
    //String randomFirstName = _aviableNames[rand.nextInt(3)];
    //String randomLastName = _aviableLastNames[rand.nextInt(3)];
   // return AssetTotoal(randomFirstName, randomLastName);
  //}

  @override
  //String toString() {
  //  return "$firstName $lastName $imageAsset" ;
  //}
}*/*/