import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/verification_view/presentation/views/widgets/verification_view_body.dart';
class VerificationView extends StatelessWidget {
  const VerificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: VerificationViewBody(),);
  }
}
