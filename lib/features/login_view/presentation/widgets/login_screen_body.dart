import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/login_view/presentation/widgets/part_email_and_pass.dart';
import 'package:food_delivery_app/features/login_view/presentation/widgets/part_of_forget_password.dart';
import 'package:food_delivery_app/features/login_view/presentation/widgets/part_of_sign_up_and_icons.dart';
import '../../../../constant.dart';
import '../../../../core/utils/gaps.dart';
import '../../../../core/utils/styles.dart';
import 'custom_button_login.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: kBackGroundColor,
      body:
      SingleChildScrollView(
          child: SafeArea(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gaps.vGap50,
            Column(
              children:  const [
                Text(
                  'Log In',
                  style: Styles.textStyle30,
                ),
                Gaps.vGap10,
                Text('Please sign in to your existing account',
                    style:Styles.textStyle16,),
              ],
            ),
            Gaps.vGap50,
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  const [
                    PartsOfEmailAndPassword(),
                    Gaps.vGap20,
                    PartOfForgetPassword(),
                    Gaps.vGap20,
                    CustomButtonLogin(),
                    PartOfSignUpAndIcons(),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}






