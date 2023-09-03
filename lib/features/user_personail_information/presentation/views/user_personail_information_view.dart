import 'package:flutter/material.dart';
import 'package:food_delivery_app/features/profile_view/presentation/views/widgets/profile_view_body.dart';
class ProfileView extends StatelessWidget {

  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileViewBody(),
    );
  }
}
