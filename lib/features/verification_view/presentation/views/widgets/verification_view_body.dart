import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/gaps.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({Key? key}) : super(key: key);

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
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                            child: IconButton(
                          onPressed: () {
                            GoRouter.of(context).push(AppRouter.kLogInView);
                          },
                          icon: const Icon(Icons.arrow_back_ios),
                          color: const Color(0xff5E616F),
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  'Verification',
                  style: Styles.textStyle30,
                ),
                Gaps.vGap10,
                Text(
                  'We have sent a code to your email',
                  style: Styles.textStyle16.copyWith(color: kTextColor),
                ),
                const Text('example@gmail.com', style: Styles.textStyle16),
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
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'CODE',
                          style: Styles.textStyle18.copyWith(color: kTextColor),
                        ),
                        Row(
                          children: [
                            Text(
                              ' Resend',
                              style: Styles.textStyle18
                                  .copyWith(color: kTextColor)
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '  in.50sec',
                              style: Styles.textStyle18
                                  .copyWith(color: kTextColor),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        DataInsideContainer(
                          text: '2',
                        ),
                        DataInsideContainer(
                          text: '0',
                        ),
                        DataInsideContainer(
                          text: '1',
                        ),
                        DataInsideContainer(
                          text: '5',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    const CustomButton(
                      title: 'Verify',
                    ),
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

class DataInsideContainer extends StatelessWidget {
  const DataInsideContainer({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: const BoxDecoration(color: kColorContainer),
      child: Center(
          child: Text(
        text,
        style: Styles.textStyle20.copyWith(color: const Color(0xff32343E)),
      )),
    );
  }
}
