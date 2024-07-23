import 'package:flutter/material.dart';
import 'package:project12/design/baking_login.dart';

const Color primaryColor = Color(0xFFFFBD73);
const Color bgColor = Color(0xFF202020);

class Baking extends StatelessWidget {
  const Baking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // image
          Expanded(
            flex: 6,
            child: Image.asset(
              'assets/images/baking.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // text + button
          Expanded(
            flex: 4,
            child: Column(
              children: [
                const Spacer(),
                Text(
                  'Baking lessons'.toUpperCase(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  'MASTER THE ART OF BAKING',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Spacer(),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BakingLogin(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('START LEARNING'),
                ),
                const SizedBox(height: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
