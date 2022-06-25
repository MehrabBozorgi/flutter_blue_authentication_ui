import 'package:flutter/material.dart';
import 'package:flutter_blue_login/styles/colors.dart';

import '../styles/text_styles.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  primaryColor,
                  darkPrimaryColor,
                ],
                begin: Alignment.topLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.03),
                          child: const Text(
                            'Sign in',
                            style: testStyle1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(width * 0.05),
                        topLeft: Radius.circular(width * 0.05),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.04,
                        vertical: height * 0.02,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: width * 0.03),
                          const Text(
                            'Welcome Back',
                            style: testStyle6,
                          ),
                          Text(
                            'Hello there, sign to continue',
                            style: testStyle11,
                          ),
                          SizedBox(height: width * 0.06),
                          Text(
                            'Username or email',
                            style: testStyle11,
                          ),
                          SizedBox(height: width * 0.02),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.03),
                                  borderSide: BorderSide.none),
                              hintText: 'Enter your username or email',
                              hintStyle: testStyle13,
                            ),
                          ),
                          SizedBox(height: width * 0.05),
                          Text(
                            'Password',
                            style: testStyle11,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(width * 0.03),
                                  borderSide: BorderSide.none),
                              hintText: 'Enter your password',
                              hintStyle: testStyle13,
                            ),
                          ),
                          SizedBox(height: width * 0.04),
                          const Text(
                            'Forget Password?',
                            style: testStyle14,
                          ),
                          SizedBox(height: width * 0.04),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(width * 0.05),
                              ),
                              fixedSize: Size(width, height * 0.06),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Sign in',
                              style: testStyle5,
                            ),
                          ),
                          Container(
                            height: height * 0.2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Don\'t have an account?',
                                  style: testStyle13,
                                ),
                                const Text(
                                  'Sing up',
                                  style: testStyle14,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
