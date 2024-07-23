import 'package:flutter/material.dart';

class Itemtt extends StatelessWidget {
  final String Itemmm;
  final String Amount;
  final Itemmmm;
  final String imageName;

  final double borderRadius = 12;

  const Itemtt({
    super.key,
    required this.Itemmm,
    required this.Amount,
    required this.Itemmmm,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Itemmmm[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
 
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Itemmmm[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '$Amount',
                    style: TextStyle(
                      color: Itemmmm[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),


            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 39.0, vertical: 14),
              child: Image.asset(imageName),
            ),

       
            Text(
              Itemmm,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Com',
              style: TextStyle(color: Colors.grey[600]),
            ),

  
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
     
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),

             
                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
