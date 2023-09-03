import 'package:flutter/material.dart';
import 'package:food_delivery_app/constant.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/gaps.dart';
import '../../../../../core/widgets/custom_appbar.dart';
import 'containrt_of_information_profile.dart';
import 'information_profile.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children:  [
          const CustomAppBar(
              textButton: 'Edit',
              kNamePageFromArrow: '',
              textPage: 'Personal Info',
              kNamePage: AppRouter.kEditProfileView),
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: ContainerOfInformationProfile()),
          ),
          Gaps.vGap50,
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(children: const [
            InformationProfile(
              iconData: Icon(Icons.person,color: kPrimaryColorOrange,),
              primaryText: "Full Name",
              secendryText: "Vishal Khadok"),
            Gaps.vGap20,
            InformationProfile(
                iconData: Icon(Icons.email,color: Color(0xff413DFB),),
                primaryText: "Email",
                secendryText: "hello@halallab.co"),
            Gaps.vGap20,
            InformationProfile(
                iconData: Icon(Icons.phone,color: Color(0xff369BFF),),
                primaryText: "Phone Number",
                secendryText: "408-841-0926"),],),
        ),
        ],
      ),
    ));
  }
}


