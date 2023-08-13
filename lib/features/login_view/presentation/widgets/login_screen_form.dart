
import 'package:flutter/material.dart';
import '../../../../core/utils/gaps.dart';
import 'custom_login_text_field.dart';


class LoginViewForm extends StatefulWidget {
  const LoginViewForm({super.key});

  @override
  State<LoginViewForm> createState() => _LoginViewFormState();
}

class _LoginViewFormState extends State<LoginViewForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 40),
          child: Text("login",
            style: TextStyle(
                color: Colors.indigo,
                fontSize: 25,
                fontWeight: FontWeight.w900),
          ),
        ),
        Gaps.hGap20,
        Column(
          children: const [
            Gaps.hGap50,
            Padding(
              padding: EdgeInsets.only(right: 0.0, left: 0),
              child: CustomLoginTextField(
                stringInTextField: "your Email",
                obscureText: true,
                textInputType: TextInputType.text,
              ),
            ),
            Gaps.vGap20,
            Padding(
              padding: EdgeInsets.only(right: 0.0, left: 0),
              child: CustomLoginTextField(
                stringInTextField: "your password",
                suffixIcon: Icon(Icons.panorama_photosphere_select_sharp,
                    color: Color(0xff32343E) ),
                obscureText: true,
                textInputType: TextInputType.text,
              ),
            ),
          ],
        ),
        Gaps.vGap30,






      ],
    );
  }
}
