import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/sign_up_view/presentation/views/widgets/sign_up_view_body.dart';
class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpViewBody(),
    );
  }
}
