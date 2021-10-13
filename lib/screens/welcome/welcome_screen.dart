import 'package:doctor_app/constants.dart';
import 'package:doctor_app/screens/Authentication/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/icons/splash_bg.svg",
          ),
          SafeArea(
            child: Column(
              children: [
                Spacer(),
                SvgPicture.asset(
                  "assets/icons/gerda_logo.svg",
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, SignUpScreen.id);
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(52, 63, 86, .2),
                            blurRadius: 20,
                            offset: Offset(0, 8),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(108, 216, 209, 1),
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: screenHeight / 45,
                            fontWeight: FontWeight.bold,
                            color: kWhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Color.fromRGBO(52, 63, 86, .2),
                        //     blurRadius: 20,
                        //     offset: Offset(0, 8),
                        //   ),
                        // ],
                        border: Border.all(
                          color: Color.fromRGBO(108, 216, 209, 1),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: screenHeight / 45,
                            fontWeight: FontWeight.bold,
                            color: kWhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: defaultPadding * 4,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
