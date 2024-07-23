// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Clock extends StatelessWidget {
  const Clock({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tourist Place"),
      ),
      body: Column(children: [
        Expanded(
            flex: 4,
            child: Column(
              children: [Image.asset('assets/images/clock-tower.jpg')],
            )),
        Expanded(
            flex: 6,
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Chiang Rai Clock Tower',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                        Text(
                          'Chiang Rai, Thailand',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        Text(
                          '559',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    )
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.blue,
                        ),
                        Text(
                          'Call',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    )),
                    Expanded(
                        child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.turn_right_rounded,
                          color: Colors.blue,
                        ),
                        Text(
                          'Call',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.blue,
                        ),
                        Text(
                          'Call',
                          style: TextStyle(fontSize: 15),
                        )
                      ],
                    ))
                  ],
                ),
                Spacer(),
                Container(
                  //padding: const EdgeInsets.all(8),
                  child: Text(' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Urna condimentum mattis pellentesque id nibh tortor id aliquet lectus. Commodo nulla facilisi nullam vehicula.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Urna condimentum mattis pellentesque id nibh tortor id aliquet lectus. Commodo nulla facilisi nullam vehicula. ',
                  style: TextStyle(fontSize: 15),textAlign: TextAlign.justify,),
                )
              ]),
            ))
      ]),
    );
  }
}
