import 'package:doctor_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
                SvgPicture.asset(
                  "assets/icons/gerda_logo.svg",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(52, 63, 86, .2),
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(245, 71, 72, .8),
                            Color.fromRGBO(245, 71, 72, 1),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Send OTP',
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
