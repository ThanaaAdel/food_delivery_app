import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../login_view/presentation/widgets/custom_login_text_field.dart';
class PartOfTextFieldEmailPassword extends StatelessWidget {
  const PartOfTextFieldEmailPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(children: const [
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
      ),],

      );
  }
}
