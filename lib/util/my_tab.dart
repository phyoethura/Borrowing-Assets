import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;

  const MyTab({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Tab(
     

      height: 80,
      
      child: Container(
       

        padding: EdgeInsets.all(8),
        decoration:BoxDecoration(
            color: Colors.redAccent, borderRadius: BorderRadius.circular(12)),
        child: Image.asset(
          iconPath,
          color: Colors.yellowAccent,
        ),
        
      ),
    );
  }
}
