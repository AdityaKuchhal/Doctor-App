import 'package:doctor_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = 'signup_screen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/icons/Sign_Up_bg.svg",
            height: MediaQuery.of(context).size.height,
          ),
          Center(
            child: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(defaultPadding, defaultPadding, defaultPadding, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create Account",
                        style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text("Already have an Account?"),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Sign In!',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SignUpForm(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding,
                          vertical: defaultPadding * 2,
                        ),
                        child: GestureDetector(
                          onTap: () {},
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
                              color: primaryColor,
                            ),
                            child: Center(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontSize: MediaQuery.of(context).size.height / 45,
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: defaultPadding,
          ),
          TextFieldName(
            text: "Username",
          ),
          TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Enter Username",
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          TextFieldName(
            text: "Email",
          ),
          TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Enter your email",
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          TextFieldName(
            text: "Phone",
          ),
          TextFormField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: "Enter your phone number",
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          TextFieldName(
            text: "Password",
          ),
          TextFormField(
            obscureText: true,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Enter password",
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          TextFieldName(
            text: "Confirm password",
          ),
          TextFormField(
            obscureText: true,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Re-Enter password",
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldName extends StatelessWidget {
  const TextFieldName({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: defaultPadding / 3,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black54,
        ),
      ),
    );
  }
}
