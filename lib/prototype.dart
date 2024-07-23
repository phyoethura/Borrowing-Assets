import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project12/tile.dart';

class Prototype extends StatefulWidget{
  @override
  _PrototypeState createState() => _PrototypeState();
}

class _PrototypeState extends State<Prototype> {
  //list of grid data
  List<Widget> gridItemsList = [];

  @override
  void initState(){
    super.initState();
    //----filling the list----
    for(int i =0; i<10; i++){
      gridItemsList.add(
        TestTile(i, (){
          //adding callback for long tap
          delete(i);
        })
      );
    }
  } 

  @override
  Widget build(BuildContext context) {
  //----building the app----
  return Scaffold(
      appBar: AppBar(
        title: Text("Prototype"),
        actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                int index = gridItemsList.length+1;
                add(
                  new TestTile(index, (){
                    delete(index);
                  })
                );
              },
            ),
          ]
      ),
      body: GridView(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: gridItemsList
      )
    ); 
  }
  void add(Widget toAdd){
    setState(() {
      TestTile tile = toAdd as TestTile; 
      gridItemsList.add(tile);
      print("tile number#${tile.index} added");
    });
  }

  ///method for deleting the items 
  void delete(int index){
    setState(() {
      gridItemsList.remove(gridItemsList  [index]);
      print("tile number#$index is deleted");
    });
  }
}