import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(
        title: Text("Owl"),
        actions: <Widget>[IconButton(icon: Icon(Icons.remove), onPressed: () => this.setState(() => _counter > 1 ? _counter-- : _counter = 0)), IconButton(icon: Icon(Icons.add), onPressed: () => this.setState(() => _counter++))],
      ),
      body: ListView.builder(itemExtent: 50, itemCount: _counter, itemBuilder: (context, index) => Text(index.toString(), textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline6))
    );
  }
}