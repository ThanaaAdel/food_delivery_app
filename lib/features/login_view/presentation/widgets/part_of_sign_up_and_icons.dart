import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../constant.dart';
import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/styles.dart';


class PartOfSignUpAndIcons extends StatelessWidget {
  const PartOfSignUpAndIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Column(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text(
              'Don’t have an account?',
              style:Styles.textStyle16.copyWith(color:kTextColor),
            ),
            TextButton(onPressed: (){
              GoRouter.of(context).push(AppRouter.kSignUpView);
            },
              child: Text( '   SIGN UP',
                  style: Styles.textStyle16.copyWith(color:  kOnBourdingOrangeActive)),

            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.02,
        ),
        Text(
          'Or',
          style: Styles.textStyle20.copyWith(color: const Color(0xff646982)),
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: MediaQuery.of(context).size.height*0.04,
              child: Image.asset(AssetsData.facebookIcon),
            ),
            CircleAvatar(
              radius: MediaQuery.of(context).size.height*0.04,
              child: Image.asset(AssetsData.twitterIcon),
            ),
            CircleAvatar(
              radius:MediaQuery.of(context).size.height*0.04,
              child: Image.asset(AssetsData.appleIcon),
            ),
          ],
        ),],);
  }
}
