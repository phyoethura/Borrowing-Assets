import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cooking Recipes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Papaya Salad',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.lightBlue),
                    ),
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(right: 8),
                    child: const Text(
                      ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Urna condimentum mattis pellentesque id nibh tortor id aliquet lectus. Commodo nulla facilisi nullam vehicula.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    children: [
                      Image.asset('assets/images/salad.png'),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(Icons.star),
                        ],
                      ),
                      const Text('3128 reviews'),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: const [
                                Icon(Icons.timelapse),
                                Text('PREP:'),
                                Text('5 mins'),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: const [
                                Icon(Icons.timer_outlined),
                                Text('COOK:'),
                                Text('10 mins'),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: const [
                                Icon(Icons.dining_outlined),
                                Text('FEEDS:'),
                                Text('1-3'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
