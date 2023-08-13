import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constant.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/gaps.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'data_and_text_field.dart';
class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kBackGroundColor,
      body:
      SingleChildScrollView(
          child: SafeArea(
            child:
            Column(
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
                  ],
                ),
                Column(
                  children:  const [
                    Text(
                      'Sign Up',
                      style: Styles.textStyle30,
                    ),
                    Gaps.vGap10,
                    Text('Please sign up to get started',
                      style:Styles.textStyle16,),
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
                    child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:  [
                      Column(children:
                      const [
                        DataAndTextField(name: 'NAME',
                          textFieldInside: 'JONE DONE',
                        obscureText: false,
                        textInputType: TextInputType.name),
                        Gaps.vGap10,
                        DataAndTextField(name: 'EMAIL',
                          textFieldInside: 'example@gail.com',
                        obscureText: false,
                          textInputType: TextInputType.emailAddress,
                        ),
                        Gaps.vGap10,
                        DataAndTextField(name: 'PASSWORD',
                          textFieldInside: '...........',
                          obscureText: true,
                          textInputType: TextInputType.visiblePassword,
                        ),
                        Gaps.vGap10,
                        DataAndTextField(
                          name: 'RE_TYPE PASSWORD',
                          textFieldInside: '...........',
                          obscureText: true,
                          textInputType: TextInputType.visiblePassword,
                        ),
                      ],),
                        SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                        const CustomButton(
                          title: 'SIGN UP',
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


