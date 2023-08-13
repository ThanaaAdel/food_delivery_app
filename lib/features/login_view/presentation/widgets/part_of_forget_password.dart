import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../constant.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/gaps.dart';
import '../../../../core/utils/styles.dart';
class PartOfForgetPassword extends StatelessWidget {
  const PartOfForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: kCheckIcon),
            ),
            Gaps.vGap10,
            Text(
              '  Remember me',
              style: Styles.textStyle16.copyWith(color: const Color(0xff646982)),
            ),
          ],
        ),
        TextButton(onPressed: (){
    GoRouter.of(context).push(AppRouter.kForgetPasswordView);},
               child: Text("forget Password",
          style: Styles.textStyle16.copyWith(
              color: const  Color(0xffFF7622)),
          ),)
      ],
    );
  }
}