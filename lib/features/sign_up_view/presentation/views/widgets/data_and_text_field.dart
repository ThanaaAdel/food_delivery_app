import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../login_view/presentation/widgets/custom_login_text_field.dart';
class DataAndTextField extends StatelessWidget {
  const DataAndTextField({Key? key, required this.name, required this.textFieldInside, required this.textInputType, required this.obscureText}) : super(key: key);
  final String name;
  final String textFieldInside;
  final TextInputType textInputType;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return     Column(children:  [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          name,
          style:
          const TextStyle(color: kTextField, fontSize: 16),
        ),
      ),
      CustomLoginTextField(
        stringInTextField: textFieldInside,
        textInputType: TextInputType.name,
        obscureText: false,
      ),],);
  }
}