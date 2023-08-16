import 'package:flutter/material.dart';

import './verificationFields.dart';
import './loginButton.dart';
import './signupPage.dart';
import './loginDecoration.dart';
import '../Animation/FadeAnimation.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _pageLogin = true;
  // bool _rememberPassword = false;

  void _togglePage(bool switchme) {
    setState(() {
        _pageLogin = switchme;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              LoginDecoration(),
              FadeAnimation(
                0.5,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[ElevatedButton(
  style: ElevatedButton.styleFrom(
    foregroundColor: _pageLogin
        ? Colors.white
        : const Color.fromRGBO(143, 148, 251, 1), backgroundColor: _pageLogin
        ? const Color.fromRGBO(143, 148, 251, 1)
        : Colors.transparent,
    elevation: 0, // Adjust elevation as needed
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  ),
  onPressed: () {
    _togglePage(true);
  },
  child: const Text("Login"),
),
ElevatedButton(
  style: ElevatedButton.styleFrom(
    foregroundColor: _pageLogin
        ? const Color.fromRGBO(143, 148, 251, 1)
        : Colors.white, backgroundColor: _pageLogin
        ? Colors.transparent
        : const Color.fromRGBO(143, 148, 251, 1),
    elevation: 0, // Adjust elevation as needed
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  ),
  onPressed: () {
    _togglePage(false);
  },
  child: const Text("SignUp"),
),
]
                    
                ),
              ),
              _pageLogin
                  ? Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: <Widget>[
                          VerificationFields(),
                          /* Remember Password */
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.end,
                          //   children: <Widget>[
                          //     Text("Remember Password?"),
                          //     Checkbox(
                          //       value: _rememberPassword ? true : false,
                          //       onChanged: (bool _newValue) {
                          //         setState(() {
                          //             _rememberPassword = _newValue;
                          //           },
                          //         );
                          //       },
                          //     ),
                          //   ],
                          // ),
                          FadeAnimation(
                            0.5,
                            Container(
                              alignment: const AlignmentDirectional(1.0, 0.0),
                              child: ElevatedButton(
  style: ElevatedButton.styleFrom(
    foregroundColor: const Color.fromRGBO(143, 148, 251, 1), primary: Colors.transparent,
    elevation: 0, // Adjust elevation as needed
    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
  ),
  onPressed: () {
    // Add your forgot password logic here
  },
  child: const Text(
    "Forgot Password?",
    style: TextStyle(
      color: Color.fromRGBO(143, 148, 251, 1),
    ),
  ),
),

                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          LoginButton(),
                          // FadeAnimation(
                          //   0.5,
                          //   Row(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: <Widget>[
                          //       Text(
                          //         "New User?",
                          //       ),
                          //       FlatButton(
                          //         highlightColor: Colors.transparent,
                          //         splashColor: Colors.transparent,
                          //         child: Text(
                          //           "Sign Up",
                          //           style: TextStyle(
                          //             color: Color.fromRGBO(143, 148, 251, 1),
                          //           ),
                          //         ),
                          //         onPressed: () => {},
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    )
                  : SignupPage()
            ],
          ),
        ),
      ),
    );
  }
}
