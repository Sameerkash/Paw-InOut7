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

inputFormat2(BuildContext context, {String label = 'null'}) {
  return InputDecoration(
    border: InputBorder.none,
    // filled: true,
    fillColor: Colors.white,
    hintText: label,
    hintStyle: TextStyle(color: Colors.black45),
    contentPadding: EdgeInsets.fromLTRB(10, 15, 10, 15),
    isDense: true,
  );
}


  bool validateAndSaveForm(GlobalKey<FormState> formKey) {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();

      return true;
    }
    return false;
  }