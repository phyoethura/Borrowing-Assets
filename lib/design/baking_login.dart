import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFFFBD73);

class BakingLogin extends StatelessWidget {
  const BakingLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 4,
            child: Image.asset(
              'assets/images/baking.jpg',
              fit: BoxFit.cover,
              alignment: Alignment.bottomCenter,
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SIGN IN',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        'SIGN UP',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: primaryColor),
                      ),
                    ],
                  ),
                  const Spacer(),
                  // textfields
                  const TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email address',
                    ),
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.key),
                      hintText: 'Password',
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Icon(Icons.arrow_forward),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
