import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TestTile extends StatelessWidget{
  int _index;
  var _callback;

  TestTile(this._index, this._callback);

  get index => _index;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Card(
        child: InkResponse(
          onLongPress: _callback,
          child: Center(
            child:Text("data#$_index")
          )
        )
      ),
    );
  }
}