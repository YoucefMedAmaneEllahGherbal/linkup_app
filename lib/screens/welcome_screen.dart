import 'package:flutter/material.dart';
import 'registration_screen.dart';
import 'login_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 100,
                  ),
                ),
                SizedBox(
                  child: DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black45,
                    ),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Link Up',
                          speed: Duration(milliseconds: 100),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 48.0),
            RoundedButton(Colors.lightBlueAccent , () => Navigator.pushNamed(context, LoginScreen.id) , 'Log In'),
            RoundedButton(Colors.blueAccent , () => Navigator.pushNamed(context, RegistrationScreen.id) , 'Register'),
          ],
        ),
      ),
    );
  }
}

