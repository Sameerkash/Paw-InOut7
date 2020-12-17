import 'package:flutter/material.dart';

void showBlockingDialog(BuildContext context) {
  showDialog<dynamic>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return const Center(child: CircularProgressIndicator());
    },
  );
}
