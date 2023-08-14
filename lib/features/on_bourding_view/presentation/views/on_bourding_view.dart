import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/on_bourding_view/presentation/views/widgets/on_bourding_body_view.dart';
class OnBourdingView extends StatelessWidget {
  const OnBourdingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: OnBourdingViewBody(),
    );
  }
}
