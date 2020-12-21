import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    labelStyle: Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 18),
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

class CustomTextFormField extends StatelessWidget {
  final String label;
  final Function(String) validate;
  final Function(String) onSave;
  final bool readOnly;
  final String initialValue;
  final int maxLines;
  const CustomTextFormField({
    Key key,
    this.label,
    this.validate,
    this.onSave,
    this.readOnly = false,
    this.initialValue,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.012.sh),
      child: Container(
        margin: EdgeInsets.only(top: 0, left: 10, right: 10),
        child: TextFormField(
          maxLines: maxLines,
          initialValue: initialValue,
          onSaved: onSave,
          validator: validate,
          readOnly: readOnly,
          decoration: inputFormat2(context, label: label),
        ),
      ),
    );
  }
}
