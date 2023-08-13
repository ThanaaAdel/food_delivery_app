import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/widgets/custom_button.dart';
import 'package:food_delivery_app/features/forget_password_view/presentation/views/widgets/part_of_text_field_password.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constant.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/gaps.dart';
import '../../../../../core/utils/styles.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child:
                  Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(

                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child:  Center(child: IconButton(onPressed: (){

                          GoRouter.of(context).push(AppRouter.kLogInView);
                        },
                          icon:const Icon(Icons.arrow_back_ios),
                          color: const Color(0xff5E616F),)),
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Forgot Password',
                  style: Styles.textStyle30,
                ),
                Gaps.vGap10,
                const Text(
                  'Please sign in to your existing account',
                  style: Styles.textStyle16,
                ),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    PartOfTextFieldEmailPassword(),
                    CustomButton(title: 'SEND CODE'),
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
