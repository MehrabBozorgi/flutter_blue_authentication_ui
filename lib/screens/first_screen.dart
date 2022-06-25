import 'package:flutter/material.dart';
import 'package:flutter_blue_login/screens/second_screen.dart';
import 'package:flutter_blue_login/styles/colors.dart';

import '../styles/text_styles.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: darkPrimaryColor,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.06),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  darkPrimaryColor,
                  primaryColor,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'pic.png',
                  width: width,
                  height: height * 0.3,
                ),
                const Text(
                  'Welcome',
                  style: testStyle1,
                ),
                SizedBox(height: height * 0.02),
                const Text(
                  'Manage your expenses',
                  style: testStyle12,
                ),
                const Text(
                  'seamlessly & intuitively',
                  style: testStyle5,
                ),
                SizedBox(height: height * 0.06),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: Size(width, height * 0.06),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width * 0.05),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Expanded(
                        flex: 1,
                        child: Text(
                          'G',
                          style: testStyle6,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Sign in with Google',
                          style: testStyle6,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(width, height * 0.065),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width * 0.05),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SecondScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Create an account',
                    style: testStyle5,
                  ),
                ),
                SizedBox(height: height * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: testStyle8,
                    ),
                    const Text(
                      'Sign in',
                      style: testStyle9,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
