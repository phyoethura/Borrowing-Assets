import 'package:flutter/material.dart';
import 'package:project12/mainpage/asset.dart';

class Unavailable_admin extends StatefulWidget {
  const Unavailable_admin({super.key});

  @override
  State<Unavailable_admin> createState() => _Unavailable_adminState();
}

class _Unavailable_adminState extends State<Unavailable_admin> {
  @override
  Widget build(BuildContext context) {
    return Banner(
      message: 'Unavailable',
      color: Colors.red,
      location: BannerLocation.topEnd,
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
              'assets/images/macbook.jpg',
              height: 80,
              width: 100,

              //fit: BoxFit.cover,
            ),
            Row(
              children: [
                Text('Item 10'),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.grey,
                  ),
                  alignment: Alignment.centerRight,

                  //tooltip: 'Increase volume by 10',
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
