import 'package:flutter/material.dart';

InputDecoration inputFormat(BuildContext context, {String label}) {
  return InputDecoration(
    errorStyle: TextStyle(color: Colors.white),
    floatingLabelBehavior: FloatingLabelBehavior.never,
    filled: true,
    fillColor: Colors.white,
    labelText: "$label",
    border: OutlineInputBorder(
      borderSide:
          BorderSide(color: Colors.white, width: 2, style: BorderStyle.none),
      borderRadius: BorderRadius.circular(20),
    ),
  );
}

bool validateSignUpForm({String name, String email, String password}) {
  if (name.isNotEmpty &&
      email.isNotEmpty &&
      password.isNotEmpty &&
      password.length >= 6) return true;

  return false;
}

bool validateSignInForm({String email, String password}) {
  if (email.isNotEmpty && password.isNotEmpty && password.length >= 6)
    return true;

  return false;
}
