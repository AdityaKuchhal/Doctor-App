import 'package:flutter/material.dart';

const primaryColor = Color(0xFF255ED6);
const textColor = Color(0xFF35364F);
const backgroundColor = Color(0xFFE6EFF9);
const redColor = Color(0xFFE85050);
const kWhite = Colors.white;

const defaultPadding = 16.0;

OutlineInputBorder textFieldBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: primaryColor.withOpacity(.1),
  ),
);

// I will explain it later

// const emailError = 'Enter a valid email address';
// const requiredField = "This field is required";

// final passwordValidator = MultiValidator(
//   [
//     RequiredValidator(errorText: 'password is required'),
//     MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
//     PatternValidator(r'(?=.*?[#?!@$%^&*-])',
//         errorText: 'passwords must have at least one special character')
//   ],
// );


