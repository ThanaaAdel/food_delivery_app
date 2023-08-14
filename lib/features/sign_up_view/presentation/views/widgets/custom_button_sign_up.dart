import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/app_router.dart';
class CustomButtonLogin extends StatelessWidget {
  const CustomButtonLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.08,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 8),
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kVerificationView);
          },
          child:  const Text('LOG IN', style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
