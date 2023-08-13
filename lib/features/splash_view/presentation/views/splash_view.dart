import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/splash_view/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
           SplashViewBody(),
        ],
      ),

    );
  }
}
