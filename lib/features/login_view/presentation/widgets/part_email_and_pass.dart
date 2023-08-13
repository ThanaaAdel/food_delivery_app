import 'package:flutter/material.dart';

import '../../../../constant.dart';
import 'custom_login_text_field.dart';
class PartsOfEmailAndPassword extends StatelessWidget {
  const PartsOfEmailAndPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(children: const [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'EMAIL',
          style:
          TextStyle(color: kTextField, fontSize: 16),
        ),
      ),
      CustomLoginTextField(
        stringInTextField: 'exaple@gmail.com',
        textInputType: TextInputType.emailAddress,
        obscureText: false,
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'PASSWORD',
          style:
          TextStyle(color: kTextField, fontSize: 16),
        ),
      ),
      CustomLoginTextField(
        stringInTextField: ' . . . . . . . . ',
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    ],);
  }
}