import 'package:flutter/material.dart';
import 'package:psych_app/pages/login.dart';
import 'package:animate_do/animate_do.dart';
import 'package:psych_app/pages/register.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
          children: [
            FadeIn(
              animate: true,
              delay: Duration(milliseconds: 1000),
              duration: Duration(seconds: 1),
              child: const Text(
                'Welcome',
                style: TextStyle(fontFamily: 'VarelaRound', fontSize: 64),
              ),
            ),
            FadeIn(
              animate: true,
              delay: Duration(milliseconds: 1500),
              duration: Duration(seconds: 1),
              child: Image.asset('assets/images/psycHelp-logo.png'),
            ),
            const SizedBox(height: 20.0),
            FadeIn(
              animate: true,
              delay: Duration(milliseconds: 2000),
              duration: Duration(seconds: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const LoginPage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[600],
                      foregroundColor: Colors.white,
                      minimumSize: const Size(150, 40),
                    ),
                    child: const Text('Login', style: TextStyle(fontSize: 18)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const RegisterPage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[600],
                      foregroundColor: Colors.white,
                      minimumSize: const Size(150, 40),
                    ),
                    child: const Text('Register', style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
