import 'package:flutter/material.dart';

void main() {
  runApp(const ThePsycHelp());
}

class ThePsycHelp extends StatelessWidget {
  const ThePsycHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'The PsycHelp',
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Welcome',
              style: TextStyle(fontFamily: 'VarelaRound', fontSize: 52),
            ),
            Text(
              'Welcome',
              style: TextStyle(fontFamily: 'Alice', fontSize: 52),
            ),
            Text('Button'),
          ],
        ),
      ),
    );
  }
}
